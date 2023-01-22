@AbapCatalog.sqlViewName: 'ZIR54ORDERSTATT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order status texts'
define view ZI_R54_OrderStatusTexts
  as select from zr54orderstatust
  association to parent ZI_R54_OrderStatuses as _Status
    on $projection.Id = _Status.Id
  association [0..1] to ZI_R54_OrderStatusLocalized as _LocalizedText
    on $projection.Id = _LocalizedText.Id
  association [0..1] to I_User as _CreationUser
    on $projection.CreatedBy = _CreationUser.UserID
  association [0..1] to I_User as _ModificationUser
    on $projection.ModifiedBy = _ModificationUser.UserID
  {
    key language as Language,
    key id as Id,
    createdat as CreatedAt,
    createdby as CreatedBy,
    modifiedat as ModifiedAt,
    modifiedby as ModifiedBy,
    name as Name,
    description as Description,
    _Status,
    _LocalizedText,
    _CreationUser,
    _ModificationUser
  }
