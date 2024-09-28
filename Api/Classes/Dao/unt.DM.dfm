object frmDM: TfrmDM
  OldCreateOrder = False
  Height = 201
  Width = 117
  object RESTClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://viacep.com.br/ws/01001000/json/'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 48
    Top = 72
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    Timeout = 0
    SynchronizedEvents = False
    Left = 48
    Top = 16
  end
  object RESTResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 48
    Top = 136
  end
end
