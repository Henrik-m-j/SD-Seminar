pageextension 50101 "CSD ResourceListExt" extends "Resource List"
// CSD1.00 - 2018-01-01 - H.M.JENSEN
// Chapter 5 - Lab 1-3
// Changed property on the Type field
// Added new fields:
// - Internal/External
// - Maximum Participants
// Added code to OnOpenPage trigger
{
    layout
    {
        modify("Type")
        {
            Visible = ShowType;
        }
        addafter("Type")
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }

        }

    }
    var
        [InDataSet]
        ShowType: Boolean;

        [InDataSet]
        ShowMaxField: Boolean;
}