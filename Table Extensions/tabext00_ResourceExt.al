tableextension 50100 "CSD Resoursce Extension" extends Resource
// CSD1.00 - 2018-11-20 - H.M.Jensen
//Nubmer 50100 is the number shown in "Extension Management" in the Client
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()

            begin
                Rec.TestField("Unit Cost");
            end;
        }
        modify(Type)
        {
            OptionCaption = 'Instructor,Room';
        }
        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
            //OptionCaptionML = DAN = 'Internt,Externt';
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            //CaptionML = 'Mac deltagere';
        }

        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
            //CaptionML = DAN = 'Antal pr. dag';
        }
    }
}