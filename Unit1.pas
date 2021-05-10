unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    ListView1: TListView;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
var
  cItem : TListViewItem;
  I     : Integer;
begin

//// Infos /////////////////////////////////////////////////////////////////////

  // Chemin d'acces pour choisir le type de Tlistview (dans l'inspecteur d'objets)

  //ListView1/ItemAppearance/ItemAppearance

  // Chemin d'acces aux proprietes Text de la list view

  //ListView1.ItemAppearanceObjects.ItemObjects.Text.

  // Chemin d'acces aux proprietes Detail de la list view

  //ListView1.ItemAppearanceObjects.ItemObjects.Detail.


//// Example ///////////////////////////////////////////////////////////////////

  // Type TListView : ListItemRightDetail

  ListView1.ItemAppearanceObjects.ItemObjects.Text.TextColor     := TAlphaColors.Red ;
  ListView1.ItemAppearanceObjects.ItemObjects.Text.PlaceOffset.X := 30 ;

  ListView1.ItemAppearanceObjects.ItemObjects.Detail.TextColor   := TAlphaColors.Blue ;

  ListView1.BeginUpdate;

  try

    for I := 0 to 10 do begin

      cItem            := ListView1.Items.Add;
      cItem.Text       := 'Header';
      cItem.Purpose    := TListItemPurpose.Header;
      cItem            := ListView1.Items.Add;
      cItem.Height     := 50 ;
      cItem.Text       := 'A'  + IntToStr(I) ;
      cItem.Detail     := 'AB' + IntToStr(I) ;
      cItem.ButtonText := 'B'  + IntToStr(I) ;
      cItem.Text       := IntToStr(I);
      cItem.Detail     := 'Test : ' + (i).ToString ;

    end;

  finally
    ListView1.EndUpdate;
  end;

end;


end.
