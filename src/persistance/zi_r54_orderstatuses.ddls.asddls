@AbapCatalog.sqlViewName: 'ZIR54ORDERSTATUS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order statuses'
define root view ZI_R54_OrderStatuses
  as select from zr54orderstatus
  composition [0..*] of ZI_R54_OrderStatusTexts as _Texts
  association [1..1] to ZI_R54_OrderStatusLocalized as _LocalizedText
    on $projection.Id = _LocalizedText.Id
  association [0..1] to I_User as _CreationUser
    on $projection.CreatedBy = _CreationUser.UserID
  association [0..1] to I_User as _ModificationUser
    on $projection.ModifiedBy = _ModificationUser.UserID
  {
    key id as Id,
    createdat as CreatedAt,
    createdby as CreatedBy,
    modifiedat as ModifiedAt,
    modifiedby as ModifiedBy,
    name as Name,
    description as Description,
    _Texts,
    _LocalizedText,
    _CreationUser,
    _ModificationUser
  }
