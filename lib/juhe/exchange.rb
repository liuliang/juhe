module Juhe
  module Exchange
    extend self
    URL = 'http://op.juhe.cn/onebox/exchange/'
    
    # 实时汇率查询换算 https://www.juhe.cn/docs/api/id/80/aid/205
    def currency(key, from, to)
      res = RestClient.get("#{URL}/currency", params: {key: key, from: from, to: to})
      JSON.parse res.body
    end
    
    # 常用汇率查询 https://www.juhe.cn/docs/api/id/80
    def query(key)
      res = RestClient.get("#{URL}/query", params: {key: key})
      JSON.parse res.body
    end
    
    # 货币列表 https://www.juhe.cn/docs/api/id/80/aid/204
    def list(key)
      res = RestClient.get("#{URL}/list", params: {key: key})
      JSON.parse res.body
    end
    
  end
end
