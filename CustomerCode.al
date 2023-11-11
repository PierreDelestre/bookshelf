codeunit 50100 CustomerCode
{
    procedure CelebrateCustomer(MyCustomer: Record Customer; ExtraMessage: Text)
    var
        NEW_CUSTOMER: Label 'WHOA!! We have a new customer %1!!\\%2';
    begin
        Message(NEW_CUSTOMER, MyCustomer."No.", ExtraMessage);
    end;

    [EventSubscriber(ObjectType::Table, Database::Customer, OnAfterInsertEvent, '', true, true)]
    local procedure CustomerOnAfterInsert(var Rec: Record Customer)
    begin
        CelebrateCustomer(rec, 'Congratulations from Codeunit!');
    end;
}