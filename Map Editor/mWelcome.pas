unit mWelcome;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, mLeveleditor, StdCtrls, ExtCtrls, jpeg;

const version = '0.10';
type
  TWelcome = class(TForm)
    btOeffnen: TButton;
    btNeu: TButton;
    laTitle: TLabel;
    laVersion: TLabel;
    shBackgroundColor: TShape;
    laBombingGames: TLabel;
    Image1: TImage;
    function getVersion:String;
    procedure btNeuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btOeffnenClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
  public
  end;

var
  Welcome: TWelcome;

implementation

uses mCreateMap;

{$R *.dfm}

procedure TWelcome.btNeuClick(Sender: TObject);
begin
   AlphaBlend := True;
   CreateMap := TCreateMap.Create(Self);
   CreateMap.Show;
end;

procedure TWelcome.btOeffnenClick(Sender: TObject);
begin
   AlphaBlend := True;
   Mapeditor := TMapeditor.Create(Self,'');
   Mapeditor.Show;
   
end;

procedure TWelcome.FormCreate(Sender: TObject);
begin
   laVersion.Caption := 'Version: ' + version;
end;

function TWelcome.getVersion():String;
begin
   Result := Version;
end;


procedure TWelcome.FormActivate(Sender: TObject);
begin
 AlphaBlend := False;
end;

end.