object Form1: TForm1
  Left = 121
  Top = 222
  Caption = 'RTC Web Socket Client Test'
  ClientHeight = 408
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Memo1: TMemo
    Left = 0
    Top = 78
    Width = 594
    Height = 330
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    Lines.Strings = (
      '1. Enter "Addr" (Server Address)'
      '2. Enter "Port" (Server Port - defaults to '#39'80'#39' for HTTP)'
      
        '3. Enter the "URI" (Unified Resource Identifier - defaults to ro' +
        'ot '#39'/'#39')'
      '4. Click "CONNECT" to open the Web Socket connection'
      ''
      '5. When a connection is established, '
      
        '    the Client can receive and send Web Socket "Frames" to the S' +
        'erver'
      '6. Use buttons on the right to send data to the Server'
      ''
      '7. Click "DISCONNECT" to close the connection'
      ''
      '---------------')
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 78
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 1
    DesignSize = (
      791
      78)
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 29
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Addr'
    end
    object Label2: TLabel
      Left = 526
      Top = 16
      Width = 24
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Port'
    end
    object Label3: TLabel
      Left = 8
      Top = 44
      Width = 23
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'URI'
    end
    object SrvAddr: TEdit
      Left = 53
      Top = 13
      Width = 438
      Height = 24
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'localhost'
    end
    object SrvPort: TEdit
      Left = 561
      Top = 13
      Width = 77
      Height = 24
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akTop, akRight]
      TabOrder = 1
      Text = '80'
    end
    object SrvURI: TEdit
      Left = 53
      Top = 40
      Width = 586
      Height = 24
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      Text = '/'
    end
    object btnConnect: TButton
      Left = 646
      Top = 14
      Width = 138
      Height = 56
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akTop, akRight]
      Caption = 'CONNECT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnConnectClick
    end
  end
  object Panel2: TPanel
    Left = 594
    Top = 78
    Width = 197
    Height = 330
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alRight
    TabOrder = 2
    object Label4: TLabel
      Left = 13
      Top = 293
      Width = 27
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'LOG'
    end
    object btnSendText: TButton
      Left = 6
      Top = 9
      Width = 90
      Height = 34
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Text'
      TabOrder = 0
      OnClick = btnSendTextClick
    end
    object btnSendBinary: TButton
      Left = 6
      Top = 41
      Width = 90
      Height = 33
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Binary'
      TabOrder = 1
      OnClick = btnSendBinaryClick
    end
    object btnSendPing: TButton
      Left = 98
      Top = 9
      Width = 90
      Height = 34
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Ping'
      TabOrder = 2
      OnClick = btnSendPingClick
    end
    object btnSendPong: TButton
      Left = 98
      Top = 41
      Width = 90
      Height = 33
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Pong'
      TabOrder = 3
      OnClick = btnSendPongClick
    end
    object btnSendTxtOne: TButton
      Left = 6
      Top = 78
      Width = 90
      Height = 32
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'TXT one'
      TabOrder = 4
      OnClick = btnSendTxtOneClick
    end
    object btnClose: TButton
      Left = 6
      Top = 213
      Width = 90
      Height = 33
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = btnCloseClick
    end
    object btnEmptyQ: TButton
      Left = 6
      Top = 249
      Width = 90
      Height = 34
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Empty Q'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = btnEmptyQClick
    end
    object btnDisconnect: TButton
      Left = 98
      Top = 213
      Width = 90
      Height = 32
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Disconnect'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = btnDisconnectClick
    end
    object btnSendExeOne: TButton
      Left = 6
      Top = 145
      Width = 90
      Height = 33
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'EXE one'
      TabOrder = 5
      OnClick = btnSendExeOneClick
    end
    object btnSendTxtMulti: TButton
      Left = 98
      Top = 78
      Width = 90
      Height = 32
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'TXT multi'
      TabOrder = 6
      OnClick = btnSendTxtMultiClick
    end
    object btnSendExeMulti: TButton
      Left = 98
      Top = 145
      Width = 90
      Height = 33
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'EXE multi'
      TabOrder = 7
      OnClick = btnSendExeMultiClick
    end
    object btnSendTxtRam: TButton
      Left = 6
      Top = 109
      Width = 90
      Height = 34
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'TXT RAM'
      TabOrder = 8
      OnClick = btnSendTxtRamClick
    end
    object btnSendExeRam: TButton
      Left = 6
      Top = 178
      Width = 90
      Height = 32
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'EXE RAM'
      TabOrder = 9
      OnClick = btnSendExeRamClick
    end
    object btnMemoClear: TButton
      Left = 98
      Top = 249
      Width = 90
      Height = 34
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Clear LOG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = btnMemoClearClick
    end
    object btnSendTxtChunks: TButton
      Left = 98
      Top = 109
      Width = 90
      Height = 34
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'TXT chunks'
      TabOrder = 14
      OnClick = btnSendTxtChunksClick
    end
    object btnSendExeChunks: TButton
      Left = 98
      Top = 178
      Width = 90
      Height = 32
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'EXE chunks'
      TabOrder = 15
      OnClick = btnSendExeChunksClick
    end
    object cbLOG: TComboBox
      Left = 53
      Top = 288
      Width = 132
      Height = 24
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Style = csDropDownList
      ItemIndex = 2
      TabOrder = 16
      Text = 'General'
      OnChange = cbLOGChange
      Items.Strings = (
        'None'
        'Basic'
        'General'
        'Detailed'
        'Full Debug')
    end
  end
  object Client: TRtcHttpClient
    MultiThreaded = True
    OnConnect = ClientConnect
    OnDisconnect = ClientDisconnect
    OnConnectFail = ClientConnectFail
    OnConnectError = ClientConnectError
    Left = 492
    Top = 92
  end
  object SockReq: TRtcDataRequest
    Client = Client
    OnResponseDone = SockReqResponseDone
    OnDataSent = SockReqDataSent
    OnConnectLost = SockReqConnectLost
    OnWSConnect = SockReqWSConnect
    OnWSDataReceived = SockReqWSDataReceived
    OnWSDataOut = SockReqWSDataOut
    OnWSDataIn = SockReqWSDataIn
    OnWSDataSent = SockReqWSDataSent
    OnWSDisconnect = SockReqWSDisconnect
    Left = 492
    Top = 152
  end
end
