@AbapCatalog.sqlViewName: 'ZIR54ORDERSTATL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order status texts'
define view ZI_R54_OrderStatusLocalized
  as select from zr54orderstatus
    left outer join zr54orderstatust
      on zr54orderstatus.id = zr54orderstatust.id
      and zr54orderstatust.language = $session.system_language
  association [1..1] to ZI_R54_OrderStatuses as _Status
    on $projection.Id = _Status.Id
  association [1..*] to ZI_R54_OrderStatusTexts as _Texts
    on $projection.Id = _Texts.Id
  association [0..1] to I_User as _CreationUser
    on $projection.CreatedBy = _CreationUser.UserID
  association [0..1] to I_User as _ModificationUser
    on $projection.ModifiedBy = _ModificationUser.UserID
  {
    key zr54orderstatus.id as Id,
    zr54orderstatust.createdat as CreatedAt,
    zr54orderstatust.createdby as CreatedBy,
    zr54orderstatust.modifiedat as ModifiedAt,
    zr54orderstatust.modifiedby as ModifiedBy,
    coalesce( zr54orderstatust.name, zr54orderstatus.name ) as Name,
    coalesce( zr54orderstatust.description, zr54orderstatus.description ) as Description,
    _Status,
    _Texts,
    _CreationUser,
    _ModificationUser
  }
