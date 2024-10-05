unit uCalculaCirculo;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCalculaArea: TButton;
    edtRaio: TEdit;
    edtArea: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnCalculaAreaClick(Sender: TObject);
  private

  public
      function calculaAreaCirculo(Raio: Double): Double;
  end;

var
  Form1: TForm1;

const
  Pi = 3.1416;

implementation

{$R *.lfm}

{ TForm1 }

function TForm1.calculaAreaCirculo(Raio: Double): Double;
begin
    Result := Pi * (Raio * Raio);
end;

procedure TForm1.btnCalculaAreaClick(Sender: TObject);
begin
     edtArea.Text := FloatToStr (calculaAreaCirculo(StrToFloat(edtRaio.Text)));
end;


end.

