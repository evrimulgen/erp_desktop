inherited fmLocalizarContatos: TfmLocalizarContatos
  Left = 244
  Top = 122
  Caption = 'Localizar Contatos'
  ClientHeight = 523
  ClientWidth = 589
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_codigo: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = edtCodigo
  end
  object Label1: TLabel
    Left = 104
    Top = 8
    Width = 71
    Height = 13
    Caption = 'Nome Fantasia'
    FocusControl = edtNomeFantasia
  end
  object Label2: TLabel
    Left = 343
    Top = 8
    Width = 63
    Height = 13
    Caption = 'Raz'#227'o Social'
    FocusControl = edtRazaoSocial
  end
  object Label3: TLabel
    Left = 8
    Top = 48
    Width = 22
    Height = 13
    Caption = 'Pa'#237's'
  end
  object Label28: TLabel
    Left = 155
    Top = 50
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label34: TLabel
    Left = 223
    Top = 50
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label4: TLabel
    Left = 391
    Top = 48
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = edtEndereco
  end
  object Label5: TLabel
    Left = 230
    Top = 97
    Width = 58
    Height = 13
    Caption = 'CNPJ / CPF'
    FocusControl = edtCnpjCpf
  end
  object Label6: TLabel
    Left = 409
    Top = 97
    Width = 37
    Height = 13
    Caption = 'IE / RG'
    FocusControl = edtIeRg
  end
  object Label7: TLabel
    Left = 8
    Top = 488
    Width = 73
    Height = 14
    Caption = 'Selecionado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCodigo: TEdit
    Left = 8
    Top = 24
    Width = 89
    Height = 21
    TabOrder = 0
    OnKeyPress = edtCodigoKeyPress
    OnKeyUp = edtCodigoKeyUp
  end
  object edtNomeFantasia: TEdit
    Left = 104
    Top = 24
    Width = 233
    Height = 21
    TabOrder = 1
    OnKeyUp = edtNomeFantasiaKeyUp
  end
  object edtRazaoSocial: TEdit
    Left = 343
    Top = 24
    Width = 233
    Height = 21
    TabOrder = 2
    OnKeyUp = edtRazaoSocialKeyUp
  end
  object edtPais: TDBLookupComboBox
    Left = 8
    Top = 64
    Width = 139
    Height = 21
    KeyField = 'CodigoPais'
    ListField = 'Pais'
    ListSource = dtsPaises
    TabOrder = 3
    OnCloseUp = edtPaisCloseUp
  end
  object edtCidade: TDBLookupComboBox
    Left = 223
    Top = 64
    Width = 160
    Height = 21
    KeyField = 'CodigoCidade'
    ListField = 'Cidade'
    ListSource = dtsCidades
    TabOrder = 5
    OnCloseUp = edtCidadeCloseUp
    OnEnter = edtCidadeEnter
  end
  object edtEndereco: TEdit
    Left = 391
    Top = 64
    Width = 185
    Height = 21
    TabOrder = 6
    OnKeyUp = edtEnderecoKeyUp
  end
  object rdgTipoPessoa: TRadioGroup
    Left = 8
    Top = 93
    Width = 213
    Height = 42
    Caption = 'Tipo do Contato'
    Columns = 2
    Items.Strings = (
      'Pessoa F'#237'sica'
      'Pessoa Jur'#237'dica')
    TabOrder = 7
    OnClick = rdgTipoPessoaClick
  end
  object edtCnpjCpf: TEdit
    Left = 230
    Top = 113
    Width = 167
    Height = 21
    TabOrder = 8
    OnKeyUp = edtCnpjCpfKeyUp
  end
  object edtIeRg: TEdit
    Left = 409
    Top = 113
    Width = 167
    Height = 21
    TabOrder = 9
    OnKeyUp = edtIeRgKeyUp
  end
  object dbgLocalizarContatos: TDBGrid
    Left = 8
    Top = 143
    Width = 568
    Height = 305
    DataSource = dtsContatos
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = dbgLocalizarContatosCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CodigoContato'
        Title.Caption = 'C'#243'digo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeFantasia'
        Title.Caption = 'Nome Fantasia'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RazaoSocial'
        Title.Caption = 'Raz'#227'o Social'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefone'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estado'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cidade'
        Width = 118
        Visible = True
      end>
  end
  object edtCodigoSelecionado: TEdit
    Left = 8
    Top = 460
    Width = 89
    Height = 21
    TabOrder = 11
  end
  object edtNomeSelecionado: TEdit
    Left = 107
    Top = 460
    Width = 469
    Height = 21
    TabOrder = 12
  end
  object btnOK: TBitBtn
    Left = 389
    Top = 488
    Width = 90
    Height = 25
    Caption = 'OK'
    TabOrder = 13
    OnClick = btnOKClick
    Glyph.Data = {
      36060000424D3606000000000000360400002800000020000000100000000100
      0800000000000002000000000000000000000001000000000000FF00FF00307A
      2A0096675E0099695F009E6E6000A16E6000A6726200AB766300B0786400B57D
      64000081000050883C005F924B00D5812700BB806500C0836600C4876700C989
      6700CC8B6800CF8E6800A7B88300EDC68C00EDC99100EFCB9500EECC9900EFCF
      9C00F0CF9F00EFD19F00F0D09E00EDD4A900F0D1A100F0D3A400F1D4A600F2D5
      AA00F2D7AD00E6D8B400F3DAB500F4DAB500F3DCB400F4DDBA00F6E0BF00EFE2
      C200F5E1C100F6E2C500F6E5C700F7E5C900F7E6CE00F8E6CB00F8E7CE00F7E9
      CF00F7E9D100F8E9D000F8EAD400F8EDD700F8EDD900FAEEDC00FAEFE000FAF1
      E200FBF2E500FCF3E700FCF4E700FBF4E900FCF4EA00FCF6EE00FDF8F100FEFB
      F500FEFBF800FEFCFA00FFFEFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000002040404
      0404040404040404040000001414141414141414141414141400000003282724
      2220201C181717150300000014323229292929232323232314000000042B2B27
      240A2220181817170300000014323232291429232923232314000000052E2B2B
      0A0A0A22201C1817050000001436323214141429232329231400000005352F0A
      010C0A0B22201C1C04000000143636141423142329292323140000000737350A
      292B140A0A1D2020030000001439361432323614142929231400000008383735
      2F2E2B230A0A2220060000001439393636363629141429291400000008383838
      37312F2B2B27242203000000143939393636363232322929140000000F400D0D
      0D0D0D0D0D0D0D2405000000143914141414141414141432140000000F40403E
      383837352F2B2B2704000000143F39393939363636363232140000000F424040
      3E38373735352B2B04000000143F3F3F39393939363632321400000011420D0D
      0D0D0D0D0D0D0D3104000000143F141414141414141414361400000012424242
      42403E3E3737352F04000000143F3F3F3F393F39393639361400000012424242
      4242403E3E38373704000000143F3F3F3F3F393F393939361400000012131213
      1212121312131213120000001414141414141414141414141400000000000000
      0000000000000000000000000000000000000000000000000000}
    NumGlyphs = 2
  end
  object btnCancelar: TBitBtn
    Left = 485
    Top = 488
    Width = 90
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 14
    OnClick = btnCancelarClick
    Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF000288010893010B99010C99010893000389FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B9B9B9F9F9FA2
      A2A2A2A2A29F9F9F9B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF000186010D9D021CAF021FB4021FB5021FB5021FB2021CB0010F9F0002
      87FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A9A9AA2A2A2A9A9A9AAAAAAAB
      ABABABABABAAAAAAA9A9A9A3A3A39A9A9AFF00FFFF00FFFF00FFFF00FFFF00FF
      00038A0118B2021FB7021EB1021DB1021DB1021DB1021DB1021EB2021FB40219
      AC00048EFF00FFFF00FFFF00FFFF00FF9C9C9CA9A9A9ABABABA9A9A9A9A9A9A9
      A9A9A9A9A9A9A9A9AAAAAAAAAAAAA8A8A89D9D9DFF00FFFF00FFFF00FF000183
      0118BB0220CC011CBF0015B4011AB0021DB1021DB1011CB00015AD011BB0021F
      B4021AAC000287FF00FFFF00FF9A9A9AABABABB1B1B1ACACACA8A8A8A8A8A8A9
      A9A9A9A9A9A8A8A8A6A6A6A8A8A8AAAAAAA8A8A89A9A9AFF00FFFF00FF010CA7
      0121E0011CD30726CC4966D70B28BC0018B00019AF0622B44A66CE0D2BB7011B
      B0021FB5010F9FFF00FFFF00FFA5A5A5B6B6B6B2B2B2B5B5B5D5D5D5B2B2B2A6
      A6A6A7A7A7ADADADD3D3D3B2B2B2A9A9A9ABABABA4A4A4FF00FF000187011CDC
      0120ED0017DC3655E2FFFFFFA4B4ED0520BB0119B28B9EE1FFFFFF4E6ACF0014
      AC021EB2021CB00003899A9A9AB4B4B4B9B9B9B3B3B3D1D1D1FFFFFFF8F8F8AE
      AEAEA9A9A9EDEDEDFFFFFFD4D4D4A6A6A6AAAAAAA9A9A99B9B9B00069A0120F8
      011FF6001DE9031FE1738BEEFFFFFFA0B1ED93A5E7FFFFFF91A4E20823B4011B
      B0021DB1021FB4010895A1A1A1BBBBBBBBBBBBB7B7B7B8B8B8E9E9E9FFFFFFF6
      F6F6F2F2F2FFFFFFEFEFEFAEAEAEA9A9A9A9A9A9AAAAAA9F9F9F020CAA0A2EFE
      0323FB011FF6001CEB0018E1788FF0FFFFFFFFFFFF96A7EA021BB50019AF021D
      B1021DB10220B5010C99A7A7A7C4C4C4BEBEBEBBBBBBB7B7B7B4B4B4EBEBEBFF
      FFFFFFFFFFF3F3F3AAAAAAA7A7A7A9A9A9A9A9A9ABABABA2A2A2040EAC294DFE
      0D30FB011FFA001CF7011CEE8EA1F4FFFFFFFFFFFFA6B6EE0520C20018B6021D
      B1021DB10220B5010B98A9A9A9D3D3D3C5C5C5BCBCBCBABABAB9B9B9F3F3F3FF
      FFFFFFFFFFF9F9F9B0B0B0A9A9A9A9A9A9A9A9A9ABABABA1A1A10208A04162FB
      2F51FC001EFA0725FA8AA0FEFFFFFF8EA3F67991F2FFFFFFA3B4EE0C29C6011B
      B8021DB4021FB2000793A4A4A4DBDBDBD5D5D5BBBBBBC1C1C1F4F4F4FFFFFFF4
      F4F4ECECECFFFFFFF8F8F8B6B6B6ABABABAAAAAAAAAAAA9F9F9F000189314FEF
      7690FF0F2DFA3354FBFFFFFF91A5FE021EF30017E7738BF3FFFFFF4765E00016
      C2021FBD021CB20002889B9B9BD2D2D2EFEFEFC6C6C6D6D6D6FFFFFFF6F6F6BB
      BBBBB6B6B6EBEBEBFFFFFFD6D6D6ACACACADADADAAAAAA9A9A9AFF00FF0C1BBC
      819AFF728BFE1134FA3456FB0526FA001CFA001CF40220ED3353ED0625DA011D
      D00220CB010DA1FF00FFFF00FFB3B3B3F2F2F2EDEDEDC7C7C7D6D6D6C0C0C0BB
      BBBBB9B9B9B9B9B9D2D2D2B8B8B8B1B1B1B0B0B0A4A4A4FF00FFFF00FF000189
      2943E6A5B7FF849AFC2341FB0323FA011FFA011FFA001EF7011BEE021FE50121
      E20118BF000184FF00FFFF00FF9B9B9BCCCCCCFDFDFDF2F2F2D0D0D0BEBEBEBC
      BCBCBCBCBCBBBBBBB9B9B9B7B7B7B7B7B7ADADAD9A9A9AFF00FFFF00FFFF00FF
      01038F2A45E693A9FFABBBFF758FFE4969FC3658FB3153FC2346FC092CF70118
      CB00038BFF00FFFF00FFFF00FFFF00FF9E9E9ECDCDCDF8F8F8FFFFFFEEEEEEDF
      DFDFD8D8D8D5D5D5D0D0D0C1C1C1B0B0B09C9C9CFF00FFFF00FFFF00FFFF00FF
      FF00FF0001890F1DBF3E5BF36B87FE728CFF5E7BFE395BFB1231EB010FB50001
      84FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B9B9BB5B5B5D8D8D8EBEBEBED
      EDEDE6E6E6D8D8D8C3C3C3AAAAAA9A9A9AFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF000189030AA30611B2050FB10107A0000188FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B9B9BA6A6A6AD
      ADADABABABA3A3A39B9B9BFF00FFFF00FFFF00FFFF00FFFF00FF}
    NumGlyphs = 2
  end
  object edtEstado: TComboBox
    Left = 155
    Top = 64
    Width = 59
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 4
    OnCloseUp = edtEstadoCloseUp
    Items.Strings = (
      'AC'
      'AL'
      'AM'
      'AP'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MG'
      'MS'
      'MT'
      'PA'
      'PB'
      'PE'
      'PI'
      'PR'
      'RJ'
      'RN'
      'RO'
      'RR'
      'RS'
      'SC'
      'SE'
      'SP'
      'TO')
  end
  object tabContatos: TZQuery
    Connection = fmMenu.zcnConexao
    Params = <>
    Left = 712
    Top = 8
  end
  object dtsContatos: TDataSource
    AutoEdit = False
    DataSet = tabContatos
    Left = 808
    Top = 8
  end
  object tabPaises: TZQuery
    Connection = fmMenu.zcnConexao
    Params = <>
    Left = 712
    Top = 56
  end
  object dtsPaises: TDataSource
    AutoEdit = False
    DataSet = tabPaises
    Left = 808
    Top = 56
  end
  object tabCidades: TZQuery
    Connection = fmMenu.zcnConexao
    Params = <>
    Left = 712
    Top = 104
  end
  object dtsCidades: TDataSource
    AutoEdit = False
    DataSet = tabCidades
    Left = 808
    Top = 104
  end
end
