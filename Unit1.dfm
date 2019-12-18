object Form1: TForm1
  Left = 565
  Top = 109
  Width = 550
  Height = 602
  BorderIcons = []
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 563
    Align = alClient
    Color = clGradientInactiveCaption
    TabOrder = 0
    object Panel2: TPanel
      Left = 16
      Top = 96
      Width = 505
      Height = 457
      BorderWidth = 2
      BorderStyle = bsSingle
      Color = clSkyBlue
      TabOrder = 0
      object Label2: TLabel
        Left = 16
        Top = 61
        Width = 28
        Height = 13
        Caption = 'Nome'
      end
      object Label3: TLabel
        Left = 16
        Top = 93
        Width = 56
        Height = 13
        Caption = 'Nascimento'
      end
      object Label4: TLabel
        Left = 16
        Top = 125
        Width = 20
        Height = 13
        Caption = 'CPF'
      end
      object Label5: TLabel
        Left = 16
        Top = 220
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label6: TLabel
        Left = 16
        Top = 252
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object Label7: TLabel
        Left = 16
        Top = 381
        Width = 50
        Height = 13
        Caption = 'Disciplinas'
      end
      object Label8: TLabel
        Left = 16
        Top = 284
        Width = 35
        Height = 13
        Caption = 'Solteiro'
      end
      object Label9: TLabel
        Left = 16
        Top = 316
        Width = 42
        Height = 13
        Caption = 'N'#186' Filhos'
      end
      object Label1: TLabel
        Left = 16
        Top = 28
        Width = 43
        Height = 13
        Caption = 'Matricula'
      end
      object txtNome: TEdit
        Left = 80
        Top = 57
        Width = 161
        Height = 21
        Hint = 'Informe seu nome'
        MaxLength = 40
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object dataNasci: TDateTimePicker
        Left = 80
        Top = 89
        Width = 89
        Height = 21
        Date = 43509.660813506950000000
        Time = 43509.660813506950000000
        TabOrder = 2
      end
      object txtCPF: TMaskEdit
        Left = 80
        Top = 121
        Width = 81
        Height = 21
        Hint = 'Informe seu CPF'
        EditMask = '000\.000\.000\-00;1;_'
        MaxLength = 14
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Text = '   .   .   -  '
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 152
        Width = 113
        Height = 49
        Caption = 'Sexo'
        TabOrder = 4
        object rbMasculino: TRadioButton
          Left = 24
          Top = 24
          Width = 33
          Height = 17
          Caption = 'M'
          TabOrder = 1
          TabStop = True
        end
        object rbFeminino: TRadioButton
          Left = 72
          Top = 24
          Width = 25
          Height = 17
          Caption = 'F'
          TabOrder = 0
          TabStop = True
        end
      end
      object txtCidade: TEdit
        Left = 80
        Top = 216
        Width = 153
        Height = 21
        Hint = 'Informe sua cidade'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object cmbES: TComboBox
        Left = 80
        Top = 248
        Width = 57
        Height = 21
        Hint = 'Selecione seu estado'
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
      end
      object cbDisciplinas: TCheckListBox
        Left = 80
        Top = 349
        Width = 97
        Height = 89
        Hint = 'Escolha as disciplinas'
        ItemHeight = 13
        Items.Strings = (
          'Matem'#225'tica'
          'Programa'#231#227'o'
          'Hist'#243'ria'
          'Ci'#234'ncias'
          'Portugu'#234's'
          'Redes')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object ckSolteiro: TCheckBox
        Left = 80
        Top = 279
        Width = 49
        Height = 23
        Caption = 'Sim'
        TabOrder = 7
        OnClick = ckSolteiroClick
      end
      object UpDown1: TUpDown
        Left = 121
        Top = 313
        Width = 16
        Height = 21
        Associate = txtFilhos
        TabOrder = 10
      end
      object txtFilhos: TEdit
        Left = 80
        Top = 313
        Width = 41
        Height = 21
        TabOrder = 8
        Text = '0'
      end
      object PageScroller1: TPageScroller
        Left = 256
        Top = 0
        Width = 17
        Height = 473
        Color = clTeal
        ParentColor = False
        TabOrder = 12
      end
      object Memo1: TMemo
        Left = 288
        Top = 80
        Width = 201
        Height = 209
        TabStop = False
        Color = clCream
        TabOrder = 11
        OnChange = Memo1Change
      end
      object txtMatr: TEdit
        Left = 80
        Top = 24
        Width = 57
        Height = 21
        TabStop = False
        Color = clBtnHighlight
        Enabled = False
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 16
      Top = 8
      Width = 505
      Height = 81
      Caption = 'Cadastro de Alunos'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -43
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 304
      Top = 112
      Width = 201
      Height = 49
      Caption = 'Gerar Dados'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Panel4Click
    end
    object gerarArquivo: TPanel
      Left = 304
      Top = 408
      Width = 201
      Height = 49
      Caption = 'Gerar Arquivo'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = True
      OnClick = gerarArquivoClick
    end
    object Panel6: TPanel
      Left = 304
      Top = 472
      Width = 201
      Height = 49
      Caption = 'Sair'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnHighlight
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = True
      OnClick = Panel6Click
    end
  end
end
