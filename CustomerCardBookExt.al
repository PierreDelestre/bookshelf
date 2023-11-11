pageextension 50100 CustomerCardBookExtension extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("Favourite Book No."; Rec."Favourite Book No.")
            {
                ApplicationArea = All;
            }
        }
    }
}