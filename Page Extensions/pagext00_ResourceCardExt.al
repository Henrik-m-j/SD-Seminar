pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"
// CSD1.00 - 2018-02-01 - H.M.JENSEN
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
                Caption = 'Resource Type';
            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {
                Caption = 'Quantity Per Day';
            }
        }
        addafter("Personal Data")
        {
            Group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowMaxField;
                Field("CSD Maximum Participants"; "CSD Maximum Participants")
                {

                }
            }
        }
    }

    trigger OnAfterGetRecord();
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(FALSE);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}