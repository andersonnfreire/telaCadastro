unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Mask, CheckLst;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    txtNome: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    dataNasci: TDateTimePicker;
    txtCPF: TMaskEdit;
    GroupBox1: TGroupBox;
    rbMasculino: TRadioButton;
    rbFeminino: TRadioButton;
    Label5: TLabel;
    txtCidade: TEdit;
    Label6: TLabel;
    cmbES: TComboBox;
    Label7: TLabel;
    cbDisciplinas: TCheckListBox;
    Label8: TLabel;
    Label9: TLabel;
    ckSolteiro: TCheckBox;
    UpDown1: TUpDown;
    txtFilhos: TEdit;
    PageScroller1: TPageScroller;
    Memo1: TMemo;
    txtMatr: TEdit;
    Label1: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    gerarArquivo: TPanel;
    Panel6: TPanel;
    procedure FormShow(Sender: TObject);
    procedure ckSolteiroClick(Sender: TObject);
    procedure MudancaDeFoco(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Panel4Click(Sender: TObject);
    procedure gerarArquivoClick(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  slLista : TStringList;

implementation

uses Math;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
var
  num:integer;
  I:Integer;
begin
  randomize;
  num := Round(random(3000)); // 99999 é o limite do numero randomico
  txtMatr.Text := IntToStr(num);

  //percorrer cada componente e ao passar pelo campo edit e trocado de cor
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TEdit then
      (Components[I] as TEdit).OnEnter := MudancaDeFoco;
  end;
  gerarArquivo.Enabled := false;
end;

procedure TForm1.ckSolteiroClick(Sender: TObject);
begin
  //Se estiver habilitado o campo solteiro, o campo de quantidade de filhos e desabilitado
  if ckSolteiro.Checked then
  begin
    txtFilhos.Enabled := false;
  end
  else
  begin
    txtFilhos.Enabled := true;
  end;
end;

procedure TForm1.MudancaDeFoco(Sender: TObject);
var
  I: integer;
  Te: TEdit;
begin
  { Percorre a matriz de componentes do form }
  for I := 0 to ComponentCount - 1 do
    { Se o componente é do tipo TEdit... }
    if Components[I] is TEdit then
    begin
      { Faz um type-casting pata o tipo TEdit }
      Te := Components[I] as TEdit;
      { Se o Edit está com o foco... }
      if Te.Focused then
        Te.Color := clTeal { Amarelo }
      else
        Te.Color := clWhite; { Branco }
    end;
end;
procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //verifica se a tecla pressionada é a tecla ENTER, conhecida como #13 
  If key = #13 then Begin 
    //se for, passa o foco para o próximo campo, zerando o valor da variável Key 
    Key:= #0; 
    Perform(Wm_NextDlgCtl,0,0); 
  end; 
end;
procedure TForm1.Panel4Click(Sender: TObject);
var
 myDate : TDateTime;
 i:Integer;
begin
  //adicionando os campos ao memo
  Memo1.Lines.Add(txtMatr.Text);
  Memo1.Lines.Add(txtNome.Text);
  Memo1.Lines.Add(DateToStr(dataNasci.Date));
  Memo1.Lines.Add(txtCPF.Text);

  //Verificar se o sexo
  if rbMasculino.Checked = true then
  begin
    Memo1.Lines.Add('Masculino');
  end
  else
  begin
    Memo1.Lines.Add('Feminino');
  end;

  Memo1.Lines.Add(txtCidade.Text);
  Memo1.Lines.Add(cmbES.items[cmbES.ItemIndex]);

  //verificando se está solteiro ou nao

  if ckSolteiro.Checked = true then
  begin
    Memo1.Lines.Add('Solteiro');
  end
  else
  begin
    Memo1.Lines.Add('Não está solteiro');
  end;

  Memo1.Lines.Add(txtFilhos.Text);

  //verificando as disciplinas marcadas
  for i := 0 to cbDisciplinas.Items.Count - 1 do
  begin
      if cbDisciplinas.Checked[i] then //Se o item estiver selecionado
      begin
         cbDisciplinas.Items.Add(cbDisciplinas.Items[cbDisciplinas.ItemIndex]);
         Memo1.Lines.Add(cbDisciplinas.Items[i]);
      end;
  end;


end;

procedure TForm1.gerarArquivoClick(Sender: TObject);
begin
  //salvar o conteudo do memo no arquivo
  Memo1.Lines.SaveToFile('C:\Users\Ander\OneDrive\Área de Trabalho\Exercicio1\'+txtNome.Text+'.txt');
end;

procedure TForm1.Panel6Click(Sender: TObject);
begin
  //sair da aplicacao
  Application.Terminate;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
    gerarArquivo.Enabled := true;
end;

end.
