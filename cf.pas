unit cf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    MaskEdit1: TMaskEdit;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses codicefiscale;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Label1.Caption:= GetCodiceFiscaleSoap.CalcolaCodiceFiscale(Edit2.Text,Edit1.Text,Edit3.Text,MaskEdit1.Text,Edit4.Text);
end;

end.
