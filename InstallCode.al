codeunit 50101 InstallCode
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        InsertBook('0001', 'Cendrillon', 'Charles Perrault', 450);
        InsertBook('0002', 'La peau de chagrin', 'Balzac', 650);
        InsertBook('0003', 'Madame Bovary', 'Flaubert', 1200);
        InsertBook('0004', 'Les fleurs du mal', 'Baudelaire', 150);
    end;

    local procedure InsertBook(BookNo: Code[20]; BookTitle: Text; BookAuthor: Text; BookPageCount: Integer)
    var
        Book: Record Book;
    begin
        if Book.get(BookNo) then
            exit;

        Book."No." := BookNo;
        Book.Author := BookAuthor;
        Book.Title := BookTitle;
        Book.Hardcover := true;
        Book."Page Count" := BookPageCount;

        Book.Insert;
    end;
}