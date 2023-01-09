unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus, ShellAPI;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure Label3Click(Sender: TObject);
    procedure Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label3MouseLeave(Sender: TObject);
    procedure Label2MouseLeave(Sender: TObject);
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.Terminate;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
form1.Hide;
form3.show;
end;

procedure TForm1.Label1MouseLeave(Sender: TObject);
begin
label1.Font.Color:=clBLACK;
end;

procedure TForm1.Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
label1.Font.Color:=clMONEYGREEN;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
form1.Hide;
form2.show;
end;

procedure TForm1.Label2MouseLeave(Sender: TObject);
begin
label2.Font.Color:=clBLACK;
end;

procedure TForm1.Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
label2.Font.Color:=clMONEYGREEN;
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.Label3MouseLeave(Sender: TObject);
begin
label3.Font.Color:=clBLACK;
end;

procedure TForm1.Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
label3.Font.Color:=clMONEYGREEN;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
ShellExecute(0,PChar('Open'),PChar('C:\Users\ZARAIN\Desktop\������\Project\DelphiHelp.chm'),nil,nil,SW_SHOW);
end;

end.
