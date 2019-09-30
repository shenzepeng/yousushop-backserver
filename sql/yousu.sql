/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/9/30 19:12:43                           */
/*==============================================================*/


drop table if exists percent_conversion;

drop table if exists pvstatistics;

alter table tb_ad
   drop primary key;

drop table if exists tb_ad;

alter table tb_ad_category
   drop primary key;

drop table if exists tb_ad_category;

alter table tb_address
   drop primary key;

drop table if exists tb_address;

alter table tb_authority
   drop primary key;

drop table if exists tb_authority;

alter table tb_brand
   drop primary key;

drop table if exists tb_brand;

alter table tb_business
   drop primary key;

drop table if exists tb_business;

alter table tb_businesslog
   drop primary key;

drop table if exists tb_businesslog;

alter table tb_category
   drop primary key;

drop table if exists tb_category;

drop table if exists tb_exchange_goods;

alter table tb_goods
   drop primary key;

drop table if exists tb_goods;

drop table if exists tb_goods_standard;

alter table tb_goods_standard_options
   drop primary key;

drop table if exists tb_goods_standard_options;

drop index Relationship_13_FK on tb_image;

alter table tb_image
   drop primary key;

drop table if exists tb_image;

alter table tb_member
   drop primary key;

drop table if exists tb_member;

alter table tb_order
   drop primary key;

drop table if exists tb_order;

alter table tb_order_delivery
   drop primary key;

drop table if exists tb_order_delivery;

alter table tb_order_item
   drop primary key;

drop table if exists tb_order_item;

alter table tb_product
   drop primary key;

drop table if exists tb_product;

alter table tb_product_auditing
   drop primary key;

drop table if exists tb_product_auditing;

drop table if exists tb_product_info;

drop table if exists tb_refund;

drop table if exists tb_return_goods;

alter table tb_role
   drop primary key;

drop table if exists tb_role;

alter table tb_role_authority
   drop primary key;

drop table if exists tb_role_authority;

alter table tb_shop
   drop primary key;

drop table if exists tb_shop;

alter table tb_shop_user
   drop primary key;

drop table if exists tb_shop_user;

alter table tb_shop_user_role
   drop primary key;

drop table if exists tb_shop_user_role;

alter table tb_stock
   drop primary key;

drop table if exists tb_stock;

alter table tb_sub_order
   drop primary key;

drop table if exists tb_sub_order;

alter table tb_sysuser
   drop primary key;

drop table if exists tb_sysuser;

alter table tb_sysuser_role
   drop primary key;

drop table if exists tb_sysuser_role;

alter table tb_template
   drop primary key;

drop table if exists tb_template;

alter table td_cart
   drop primary key;

drop table if exists td_cart;

alter table td_collection
   drop primary key;

drop table if exists td_collection;

alter table td_footmark
   drop primary key;

drop table if exists td_footmark;

/*==============================================================*/
/* Table: percent_conversion                                    */
/*==============================================================*/
create table percent_conversion
(
   percent_conversion_id int(10),
   bak1                 varchar(100),
   bak2                 varchar(100),
   bak3                 varchar(100),
   bak4                 varchar(100),
   bak5                 varchar(100)
);

alter table percent_conversion comment '转化量表';

/*==============================================================*/
/* Table: pvstatistics                                          */
/*==============================================================*/
create table pvstatistics
(
   pvstatistics_id      int(10),
   bak1                 varchar(100),
   bak2                 varchar(100),
   bak3                 varchar(100),
   bak4                 varchar(100),
   bak5                 varchar(100)
);

alter table pvstatistics comment '日PV统计表';

/*==============================================================*/
/* Table: tb_ad                                                 */
/*==============================================================*/
create table tb_ad
(
   ad_id                int(10) not null,
   title                varchar(200),
   url                  varchar(200),
   pic                  varchar(200),
   sort                 varchar(200),
   valid                varchar(200),
   category_id          int(10),
   create_id            int(10),
   create_time          datetime,
   update_id            int(10),
   update_time          datetime,
   is_delete            char(1) not null,
   status               char(1) not null,
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_ad comment '是否删除（is_delete）：Y为已删除N为未删除（注意大写）
是否生效（status）：Y为已生效N为未';

alter table tb_ad
   add primary key (ad_id);

/*==============================================================*/
/* Table: tb_ad_category                                        */
/*==============================================================*/
create table tb_ad_category
(
   ad_category_id       int(20) not null,
   category_name        varchar(200),
   groupname            varchar(200),
   code                 varchar(200),
   status               varchar(200),
   create_id            int(10),
   create_time          datetime,
   update_id            int(10),
   update_time          datetime,
   is_delete            char(1) not null,
   is_enable            char(1) not null,
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_ad_category comment '是否删除（is_delete）：Y为已删除N为未删除（注意大写）
是否生效（status）：Y为已生效N为未';

alter table tb_ad_category
   add primary key (ad_category_id);

/*==============================================================*/
/* Table: tb_address                                            */
/*==============================================================*/
create table tb_address
(
   address_id           int(100) not null,
   member_id            int(100),
   name                 varchar(200),
   province             varchar(20),
   city                 varchar(20),
   area                 varchar(20),
   detailed_address     varchar(200),
   mobile               varchar(20),
   email                varchar(200),
   address_alias        varchar(200),
   create_time          datetime,
   update_time          datetime,
   create_id            int(10),
   is_delete            char(1),
   is_default           char(1),
   status               char(1),
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_address comment '会员快递地址列表';

alter table tb_address
   add primary key (address_id);

/*==============================================================*/
/* Table: tb_authority                                          */
/*==============================================================*/
create table tb_authority
(
   authority_id         int(10) not null,
   authority_name       varchar(200),
   code                 varchar(200),
   authority_description varchar(200),
   url                  varchar(200),
   type                 int(10),
   authority_priority   int(10),
   parent_id            int(10),
   is_delete            char(1),
   create_id            int(10),
   update_id            int(10),
   create_time          datetime,
   update_time          datetime,
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_authority comment '权限表';

alter table tb_authority
   add primary key (authority_id);

/*==============================================================*/
/* Table: tb_brand                                              */
/*==============================================================*/
create table tb_brand
(
   brand_id             int(10) not null,
   brand_name           varchar(200) not null,
   brand_first_letter   varchar(200),
   brand_logo           varchar(200) not null,
   create_id            varchar(200),
   create_time          datetime,
   update_id            varchar(200),
   update_time          datetime,
   is_delete            char(1) not null,
   status               char(1) not null,
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_brand comment '是否删除（is_delete）：Y为已删除N为未删除（注意大写）
是否生效（status）：Y为已生效N为未';

alter table tb_brand
   add primary key (brand_id);

/*==============================================================*/
/* Table: tb_business                                           */
/*==============================================================*/
create table tb_business
(
   business_id          int(10) not null,
   default_shop_id      int(10),
   default_shop_name    varchar(100),
   business_status      int(10) not null,
   phone                varchar(100),
   email                varchar(100),
   comp_name            varchar(100),
   comp_mobile          varchar(100),
   comp_phone           varchar(100),
   comp_address         varchar(100),
   con_name             varchar(10),
   con_qq               varchar(100),
   con_mobile           varchar(100),
   con_email            varchar(100),
   license_num          varchar(100),
   taxregist_num        varchar(100),
   organ_num            varchar(100),
   legal                varchar(100),
   legal_indentity      varchar(100),
   openbank             varchar(100),
   ob_branch            varchar(100),
   bank_num             varchar(100),
   createid             int(10),
   createtime           datetime,
   update_user          int(10),
   update_time          datetime,
   status               char(1),
   is_delete            char(1),
   bak1                 varchar(100),
   bak2                 varchar(100),
   bak3                 varchar(100)
);

alter table tb_business comment '商家信息表';

alter table tb_business
   add primary key (business_id);

/*==============================================================*/
/* Table: tb_businesslog                                        */
/*==============================================================*/
create table tb_businesslog
(
   businesslog_id       int(10) not null,
   business_name        varchar(200),
   auditing_name        varchar(200),
   auditing_status      int(20),
   reason               varchar(200),
   create_id            varchar(200),
   create_time          datetime,
   update_id            varchar(200),
   update_time          datetime,
   is_delete            char(1) not null,
   status               char(1) not null,
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_businesslog comment '商家审核日志表';

alter table tb_businesslog
   add primary key (businesslog_id);

/*==============================================================*/
/* Table: tb_category                                           */
/*==============================================================*/
create table tb_category
(
   category_id          int(20) not null,
   category_name        varchar(200) not null,
   parent_id            int(20) not null,
   level                int(20) not null,
   sort                 int(10),
   is_delete            char(1),
   status               char(1) not null,
   create_time          datetime not null,
   create_id            int(10) not null,
   update_time          datetime not null,
   update_id            int(10) not null,
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_category comment '商品分类表';

alter table tb_category
   add primary key (category_id);

/*==============================================================*/
/* Table: tb_exchange_goods                                     */
/*==============================================================*/
create table tb_exchange_goods
(
   exchange_goods_id    int(10),
   tb_sub_order         int(10),
   tb_order             int(10),
   exchange_reason      varchar(200),
   audit_status         char(1),
   apply_time           datetime,
   exchange_goods_status char(1),
   exchange_goods_time  datetime,
   create_id            int(10),
   create_time          datetime,
   update_id            int(10),
   update_time          datetime,
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_exchange_goods comment '订单换货表';

/*==============================================================*/
/* Table: tb_goods                                              */
/*==============================================================*/
create table tb_goods
(
   goods_id             int(10) not null,
   goods_name           varchar(100),
   product_id           int(10) not null,
   shop_id              int(10) not null,
   cost_price           decimal(10,2),
   sell_price           decimal(10,2),
   inventory            int(10),
   is_specification     char(1),
   spec_info            varchar(200),
   status               char(1),
   is_putaway           char(1),
   create_id            char(1),
   create_time          datetime,
   update_id            char(1),
   update_time          datetime,
   is_delete            char(1),
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_goods comment '商品(SKU)';

alter table tb_goods
   add primary key (goods_id);

/*==============================================================*/
/* Table: tb_goods_standard                                     */
/*==============================================================*/
create table tb_goods_standard
(
   goods_standard_id    int(10) not null,
   standard_id          int(10),
   standard_name        varchar(100),
   create_id            int(10),
   create_time          datetime,
   update_id            int(10),
   update_time          datetime,
   is_delete            char(1) not null,
   status               char(1) not null,
   bak1                 varchar(100),
   bak2                 varchar(100),
   bak3                 varchar(100)
);

alter table tb_goods_standard comment '商品规格表';

/*==============================================================*/
/* Table: tb_goods_standard_options                             */
/*==============================================================*/
create table tb_goods_standard_options
(
   id                   int(10) not null,
   standard_id          int(10),
   standard_name        varchar(100),
   sort                 int(10),
   create_id            int(10),
   create_time          datetime,
   update_id            int(10),
   update_time          datetime,
   is_delete            char(1) not null,
   status               char(1) not null,
   bak1                 varchar(100),
   bak2                 varchar(100),
   bak3                 varchar(100)
);

alter table tb_goods_standard_options comment '商品规格选项表';

alter table tb_goods_standard_options
   add primary key (id);

/*==============================================================*/
/* Table: tb_image                                              */
/*==============================================================*/
create table tb_image
(
   goods_id             int(10),
   img_id               int(10) not null,
   img_color            varchar(100),
   img_path             varchar(100) not null,
   img_suffix           varchar(100),
   is_master            char(1),
   img_order            int(10),
   create_id            int(10),
   create_time          datetime,
   update_id            int(10),
   update_time          datetime,
   is_delete            char(1),
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_image comment '商品图片';

alter table tb_image
   add primary key (img_id);

/*==============================================================*/
/* Index: Relationship_13_FK                                    */
/*==============================================================*/
create fulltext index Relationship_13_FK on tb_image
(
   
);

/*==============================================================*/
/* Table: tb_member                                             */
/*==============================================================*/
create table tb_member
(
   member_id            int(10) not null,
   member_name          varchar(200),
   password             varchar(200),
   mobile               varchar(15),
   nickname             varchar(200),
   sex                  char(1),
   birthday             date,
   address              varchar(200),
   position             varchar(200),
   headimg              varchar(200),
   create_time          datetime,
   update_time          datetime,
   status               char(1),
   is_delete            varchar(200),
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_member comment '会员';

alter table tb_member
   add primary key (member_id);

/*==============================================================*/
/* Table: tb_order                                              */
/*==============================================================*/
create table tb_order
(
   order_id             int(10) not null,
   member_id            int(100),
   address              varchar(200),
   crate_time           datetime,
   update_time          datetime,
   totalmoney           decimal(10,2),
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_order comment '订单主表';

alter table tb_order
   add primary key (order_id);

/*==============================================================*/
/* Table: tb_order_delivery                                     */
/*==============================================================*/
create table tb_order_delivery
(
   delivery_id          int(10) not null comment '订单ID',
   ordersub_id          int(10),
   recive_name          varchar(200) default NULL comment '收货人全名',
   recive_province      int(10) default NULL comment '省份',
   recive_city          int(10) default NULL comment '城市',
   recive_area          int(10) default NULL comment '区/县',
   recive_address       varchar(200) default NULL comment '收货地址，如：xx路xx号',
   recive_mobile        varchar(20) default NULL comment '固定电话',
   recive_email         varchar(50) default NULL comment '移动电话',
   post_id              varchar(20) default NULL comment '邮政编码,如：310001',
   post_status          char(1) default NULL,
   post_fee             decimal(10,2) default NULL,
   post_time            datetime,
   delivery_time        datetime,
   status               char(1),
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_order_delivery comment '订单物流表';

alter table tb_order_delivery
   add primary key (delivery_id);

/*==============================================================*/
/* Table: tb_order_item                                         */
/*==============================================================*/
create table tb_order_item
(
   id                   int not null,
   ordersub_id          int,
   goods_id             int(10),
   goods_name           varchar(200),
   goods_type           varchar(200),
   sell_price           decimal(10,2),
   actual_payment       decimal(10,2),
   quantity             int,
   discount             varchar(200),
   status               char(1),
   create_time          datetime,
   update_time          datetime,
   create_id            int(10),
   update_id            int(10),
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_order_item comment '订单商品明细表';

alter table tb_order_item
   add primary key (id);

/*==============================================================*/
/* Table: tb_product                                            */
/*==============================================================*/
create table tb_product
(
   product_id           int(10) not null,
   classify1            int(10),
   classify2            int(10),
   classify3            int(10),
   template             int(10),
   product_name         varchar(100),
   brand                int(10),
   subtitle             varchar(100),
   packlist             varchar(100),
   afterservice         varchar(100),
   status               char(1),
   create_id            int(10),
   create_time          datetime,
   update_id            int(10),
   update_time          datetime,
   is_delete            char(1),
   bak1                 varchar(100),
   bak2                 varchar(100),
   bak3                 varchar(100)
);

alter table tb_product comment '产品(SPU)';

alter table tb_product
   add primary key (product_id);

/*==============================================================*/
/* Table: tb_product_auditing                                   */
/*==============================================================*/
create table tb_product_auditing
(
   product_auditing_id  int(10) not null,
   product_id           int(10),
   product_name         varchar(200) not null,
   shop_id              int(20) not null,
   status               varchar(200) not null,
   reason               varchar(200),
   sysuser_id           int(20),
   auditing_time        datetime,
   is_delete            char(1) not null,
   create_id            varchar(200),
   create_time          datetime,
   update_id            varchar(200),
   update_time          datetime,
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_product_auditing comment '产品审核表';

alter table tb_product_auditing
   add primary key (product_auditing_id);

/*==============================================================*/
/* Table: tb_product_info                                       */
/*==============================================================*/
create table tb_product_info
(
   product_id           int(10) not null,
   introduce            longtext,
   extrattribute        longtext,
   create_id            int(10),
   create_time          datetime,
   update_id            int(10),
   update_time          datetime,
   is_delete            char(1),
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_product_info comment '产品信息表';

/*==============================================================*/
/* Table: tb_refund                                             */
/*==============================================================*/
create table tb_refund
(
   refund_id            int(10),
   return_goods_id      int(10),
   tb_sub_order         int(10),
   tb_order             int(10),
   return_reason        varchar(200),
   audit_status         char(1),
   apply_time           datetime,
   return_goods_status  char(1),
   return_goods_time    datetime,
   create_id            int(10),
   create_time          datetime,
   update_id            int(10),
   update_time          datetime,
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_refund comment '退款单表';

/*==============================================================*/
/* Table: tb_return_goods                                       */
/*==============================================================*/
create table tb_return_goods
(
   return_goods_id      int(10),
   tb_sub_order         int(10),
   tb_order             int(10),
   return_reason        varchar(200),
   audit_status         char(1),
   apply_time           datetime,
   return_goods_status  char(1),
   return_goods_time    datetime,
   create_id            int(10),
   create_time          datetime,
   update_id            int(10),
   update_time          datetime,
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_return_goods comment '订单退货表';

/*==============================================================*/
/* Table: tb_role                                               */
/*==============================================================*/
create table tb_role
(
   role_id              int(10) not null,
   role_name            varchar(200),
   type                 int(10),
   grade                int(10),
   parent_id            int(10),
   create_id            int(10),
   update_id            int(10),
   create_time          datetime,
   update_time          datetime,
   bak1                 char(10),
   bak2                 char(10),
   bak3                 char(10)
);

alter table tb_role comment '角色表';

alter table tb_role
   add primary key (role_id);

/*==============================================================*/
/* Table: tb_role_authority                                     */
/*==============================================================*/
create table tb_role_authority
(
   authority_id         int(10) not null,
   role_id              int(10) not null
);

alter table tb_role_authority comment '角色权限关系表';

alter table tb_role_authority
   add primary key (authority_id, role_id);

/*==============================================================*/
/* Table: tb_shop                                               */
/*==============================================================*/
create table tb_shop
(
   shop_id              int(10) not null,
   shop_name            varchar(200),
   business_id          int(10),
   createid             int(10),
   createtime           datetime,
   update_user          int(10),
   update_time          datetime,
   bak1                 varchar(100),
   bak2                 varchar(100),
   bak3                 varchar(100)
);

alter table tb_shop comment '店铺表';

alter table tb_shop
   add primary key (shop_id);

/*==============================================================*/
/* Table: tb_shop_user                                          */
/*==============================================================*/
create table tb_shop_user
(
   shop_user_id         int(10) not null,
   shop_user_name       varchar(200),
   shop_user_password   varchar(200),
   shop_id              int(10),
   createid             int(10),
   createtime           datetime,
   update_user          int(10),
   update_time          datetime,
   bak1                 varchar(100),
   bak2                 varchar(100),
   bak3                 varchar(100)
);

alter table tb_shop_user comment '店铺用户表';

alter table tb_shop_user
   add primary key (shop_user_id);

/*==============================================================*/
/* Table: tb_shop_user_role                                     */
/*==============================================================*/
create table tb_shop_user_role
(
   shop_user_id         int(10) not null,
   role_id              int(10) not null
);

alter table tb_shop_user_role comment '店铺用户角色关系表';

alter table tb_shop_user_role
   add primary key (shop_user_id, role_id);

/*==============================================================*/
/* Table: tb_stock                                              */
/*==============================================================*/
create table tb_stock
(
   goods_id             int(10) not null,
   inventory            int(10),
   createid             int(10),
   createtime           datetime,
   update_user          int(10),
   update_time          datetime,
   bak1                 varchar(100),
   bak2                 varchar(100),
   bak3                 varchar(100)
);

alter table tb_stock comment '有需要时才使用此表';

alter table tb_stock
   add primary key (goods_id);

/*==============================================================*/
/* Table: tb_sub_order                                          */
/*==============================================================*/
create table tb_sub_order
(
   ordersub_id          int(10) not null,
   order_id             int(10),
   member_id            int(10),
   shop_id              varchar(200),
   shop_name            char(1),
   create_time          datetime,
   pay_time             datetime,
   paymoney             decimal(10,2),
   expressfee           decimal(10,2),
   pay_status           char(1),
   pay_model            varchar(200),
   update_time          datetime,
   create_id            int(10),
   update_id            int(10),
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_sub_order comment '5653';

alter table tb_sub_order
   add primary key (ordersub_id);

/*==============================================================*/
/* Table: tb_sysuser                                            */
/*==============================================================*/
create table tb_sysuser
(
   sysuser_id           int(10) not null,
   username             varchar(20) not null,
   password             varchar(20) not null,
   create_time          datetime,
   last_time            datetime,
   name                 varchar(20),
   create_id            int(10),
   update_id            int(10),
   update_time          datetime,
   is_delete            char(1) not null,
   status               char(1) not null,
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_sysuser comment '是否删除（is_delete）：Y为已删除N为未删除（注意大写）
是否生效（status）：Y为已生效N为未';

alter table tb_sysuser
   add primary key (sysuser_id);

/*==============================================================*/
/* Table: tb_sysuser_role                                       */
/*==============================================================*/
create table tb_sysuser_role
(
   sysuser_id           int(10) not null,
   role_id              int(10) not null
);

alter table tb_sysuser_role comment '运营商角色关系表';

alter table tb_sysuser_role
   add primary key (sysuser_id, role_id);

/*==============================================================*/
/* Table: tb_template                                           */
/*==============================================================*/
create table tb_template
(
   template_id          int(20) not null,
   category_id          int(20) not null,
   template_name        varchar(200) not null,
   brands               varchar(200) not null,
   specs                varchar(200) not null,
   attribute            varchar(200),
   is_delete            char(1) not null,
   status               char(1),
   create_id            varchar(200),
   create_time          datetime,
   update_id            varchar(200),
   update_time          datetime,
   bak1                 varchar(200),
   bak2                 varchar(200),
   bak3                 varchar(200)
);

alter table tb_template comment '模板表';

alter table tb_template
   add primary key (template_id);

/*==============================================================*/
/* Table: td_cart                                               */
/*==============================================================*/
create table td_cart
(
   cart_id              int(10) not null,
   order_no             int(10),
   business_id          int(10),
   business_name        varchar(200),
   goods_id             int(10),
   goods_name           char(1),
   classify             varchar（200）,
   goods_price          decimal(10,2),
   count                int（10）,
   price_sum            decimal(10,2),
   user_name            varchar(200),
   price_count          decimal(10,2),
   user_id              int(10),
   create_time          datetime,
   update_time          datetime,
   create_id            int(10),
   status               char(1),
   user_remarks1        varchar(100),
   user_remarks2        varchar(100),
   user_remarks3        varchar(100)
);

alter table td_cart comment '购物车表';

alter table td_cart
   add primary key (cart_id);

/*==============================================================*/
/* Table: td_collection                                         */
/*==============================================================*/
create table td_collection
(
   collection_id        int(10) not null,
   member_id            int(10),
   goods_id             int(10),
   price                decimal(10,2),
   status               char(1),
   create_id            int(10),
   create_time          datetime,
   update_id            int(10),
   update_time          datetime,
   is_delete            char(1),
   collection_remaks1   varchar(200),
   collection_remaks2   varchar(200),
   collection_remaks3   varchar(200)
);

alter table td_collection comment '收藏表';

alter table td_collection
   add primary key (collection_id);

/*==============================================================*/
/* Table: td_footmark                                           */
/*==============================================================*/
create table td_footmark
(
   footmark_id          int(10) not null,
   user_id              int(10) not null,
   product_id           int(10) not null,
   price                decimal(10,2),
   introduce            varchar(500),
   status               char(1),
   create_id            int(10),
   create_time          datetime,
   uodate_id            char(10),
   udpate_time          datetime,
   footmark_deletet     varchar(200),
   footmark_remaks1     char(10),
   footmark_remaks2     char(10),
   footmark_remaks3     char(10)
);

alter table td_footmark comment '足迹';

alter table td_footmark
   add primary key (footmark_id);

alter table tb_address add constraint FK_Reference_8 foreign key (member_id)
      references tb_member (member_id) on delete restrict on update restrict;

alter table tb_businesslog add constraint FK_Reference_36 foreign key (businesslog_id)
      references tb_business (business_id) on delete restrict on update restrict;

alter table tb_goods add constraint " " foreign key (product_id)
      references tb_product (product_id) on delete restrict on update restrict;

alter table tb_goods_standard_options add constraint FK_Reference_37 foreign key ()
      references tb_goods_standard on delete restrict on update restrict;

alter table tb_image add constraint FK_商品图片 foreign key (goods_id)
      references tb_goods (goods_id) on delete restrict on update restrict;

alter table tb_order add constraint FK_Reference_9 foreign key (member_id)
      references tb_member (member_id) on delete restrict on update restrict;

alter table tb_order_delivery add constraint FK_Reference_4 foreign key (ordersub_id)
      references tb_sub_order (ordersub_id) on delete restrict on update restrict;

alter table tb_order_item add constraint FK_Reference_3 foreign key (ordersub_id)
      references tb_sub_order (ordersub_id) on delete restrict on update restrict;

alter table tb_order_item add constraint FK_Reference_34 foreign key (goods_id)
      references tb_goods (goods_id) on delete restrict on update restrict;

alter table tb_product add constraint FK_Reference_12 foreign key (classify3)
      references tb_category (category_id) on delete restrict on update restrict;

alter table tb_product add constraint FK_Reference_13 foreign key (product_id)
      references tb_brand (brand_id) on delete restrict on update restrict;

alter table tb_product add constraint FK_Reference_15 foreign key (template)
      references tb_template (template_id) on delete restrict on update restrict;

alter table tb_product_auditing add constraint FK_Reference_35 foreign key (product_id)
      references tb_product (product_id) on delete restrict on update restrict;

alter table tb_product_info add constraint FK_info foreign key (product_id)
      references tb_product (product_id) on delete restrict on update restrict;

alter table tb_role_authority add constraint FK_Reference_45 foreign key (authority_id)
      references tb_authority (authority_id) on delete restrict on update restrict;

alter table tb_role_authority add constraint FK_Reference_46 foreign key (role_id)
      references tb_role (role_id) on delete restrict on update restrict;

alter table tb_shop add constraint FK_Reference_31 foreign key (business_id)
      references tb_business (business_id) on delete restrict on update restrict;

alter table tb_shop_user add constraint FK_Reference_32 foreign key (shop_id)
      references tb_shop (shop_id) on delete restrict on update restrict;

alter table tb_shop_user_role add constraint FK_Reference_29 foreign key ()
      references tb_shop_user (shop_user_id) on delete restrict on update restrict;

alter table tb_shop_user_role add constraint FK_Reference_33 foreign key (shop_user_id)
      references tb_shop_user (shop_user_id) on delete restrict on update restrict;

alter table tb_shop_user_role add constraint FK_Reference_38 foreign key (role_id)
      references tb_role (role_id) on delete restrict on update restrict;

alter table tb_stock add constraint FK_库存表 foreign key (goods_id)
      references tb_goods (goods_id) on delete restrict on update restrict;

alter table tb_sub_order add constraint FK_Reference_2 foreign key (order_id)
      references tb_order (order_id) on delete restrict on update restrict;

alter table tb_sub_order add constraint FK_Reference_24 foreign key (member_id)
      references tb_member (member_id) on delete restrict on update restrict;

alter table tb_sysuser_role add constraint FK_Reference_30 foreign key (sysuser_id)
      references tb_sysuser (sysuser_id) on delete restrict on update restrict;

alter table tb_sysuser_role add constraint FK_Reference_37 foreign key (role_id)
      references tb_role (role_id) on delete restrict on update restrict;

alter table tb_template add constraint FK_Reference_11 foreign key (category_id)
      references tb_category (category_id) on delete restrict on update restrict;

alter table td_collection add constraint FK_Reference_25 foreign key (member_id)
      references tb_member (member_id) on delete restrict on update restrict;

alter table td_collection add constraint FK_Reference_28 foreign key (goods_id)
      references tb_goods (goods_id) on delete restrict on update restrict;

