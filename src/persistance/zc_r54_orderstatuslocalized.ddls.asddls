@AbapCatalog.sqlViewName: 'ZCR54ORDERSTATL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order status localized text'
define view ZC_R54_OrderStatusLocalized
  as select from ZI_R54_OrderStatusLocalized
  {
    key Id,
    CreatedAt,
    CreatedBy,
    ModifiedAt,
    ModifiedBy,
    Name,
    Description,
    _CreationUser,
    _ModificationUser,
    _Status,
    _Texts
  }
