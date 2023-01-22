@AbapCatalog.sqlViewName: 'ZIR54ORDERSTATUS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order statuses'
define root view ZI_r54_OrderStatuses
  as select from zr54orderstatus
  composition [0..*] of ZI_r54_OrderStatusTexts as _Texts
  composition [0..1] of ZI_r54_OrderStatusLocalized as _LocalizedText
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
    _Texts,
    _LocalizedText,
    _CreationUser,
    _ModificationUser
  }
