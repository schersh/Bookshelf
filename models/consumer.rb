class Consumer < ActiveRecord::base

def getLogin
  @consumer = OAuth::Consumer.new('9PDFrBnr73QPOaxy24u95w',
                              'HzEmX2ExWqrPyPFVyl9ZyCQComsROCeRMdCACQaMkE',
                              :site => 'http://www.goodreads.com')

  @request_token = consumer.get_request_token

  @access_token = request_token.get_access_token

  @callback_url = "http://localhost:4567/"

  @user = auth.user

end

getLogin()
