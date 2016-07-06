module Juhe
  module FinaceStock
    extend self
    URL = 'http://web.juhe.cn:8080/finance/stock'
    
    # 美股单独某一个股票 https://www.juhe.cn/docs/api/id/21/aid/75
    def usa(key, gid)
      res = RestClient.get("#{URL}/usa", params: {key: key, gid: gid})
      JSON.parse res.body
    end
    
    # 沪深单独某一个股票 https://www.juhe.cn/docs/api/id/21
    def hs(key, gid)
      res = RestClient.get("#{URL}/hs", params: {key: key, gid: gid})
      JSON.parse res.body
    end
    
    # 香港单独某一个股票 https://www.juhe.cn/docs/api/id/21/aid/62
    def hk(key, gid)
      res = RestClient.get("#{URL}/hk", params: {key: key, num: gid})
      JSON.parse res.body
    end
    
    # 香港股票市场列表 https://www.juhe.cn/docs/api/id/21/aid/632
    def hkall(key, options = {})
      options[:page] ||= 1
      options[:type] ||= 1
      options[:key] = key
      res = RestClient.get("#{URL}/hkall", params: options)
      JSON.parse res.body
    end

    # 美国股票市场列表 https://www.juhe.cn/docs/api/id/21/aid/633
    def usaall(key, options = {})
      options[:page] ||= 1
      options[:type] ||= 1
      options[:key] = key
      res = RestClient.get("#{URL}/usaall", params: options)
      JSON.parse res.body
    end

    # 深圳股票市场列表 https://www.juhe.cn/docs/api/id/21/aid/634
    def szall(key, options = {})
      options[:page] ||= 1
      options[:type] ||= 1
      options[:key] = key
      res = RestClient.get("#{URL}/szall", params: options)
      JSON.parse res.body
    end

    # 上海股票市场列表 https://www.juhe.cn/docs/api/id/21/aid/635
    def shall(key, options = {})
      options[:page] ||= 1
      options[:type] ||= 1
      options[:key] = key
      res = RestClient.get("#{URL}/shall", params: options)
      JSON.parse res.body
    end
  end
end
