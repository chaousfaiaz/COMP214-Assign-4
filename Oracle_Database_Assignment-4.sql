create table users (
   id          INTEGER                   not null     ,
   email       varchar(255)             not null     ,
   first_name  varchar(255)             not null     ,
   last_name   varchar(255)             not null     ,
   active      CHAR(1)                      default 'Y',
   inserted_at timestamp with time zone not null     ,
   updated_at  timestamp with time zone not null     ,
   constraint pk_users primary key (id)
);

insert into users(id,email,first_name,last_name,active,inserted_at,updated_at) values(1,'sapna001@example.com','Sapna','Sinhar','Y',sysdate,sysdate);
insert into users(id,email,first_name,last_name,active,inserted_at,updated_at) values(2,'sapna002@gmail.com','Sapna','Sinhar','Y',sysdate,sysdate);
insert into users(id,email,first_name,last_name,active,inserted_at,updated_at) values(3,'sapna003@gmail.com','Sapna','Sinhar','Y',sysdate,sysdate);
insert into users(id,email,first_name,last_name,active,inserted_at,updated_at) values(4,'sapna004@gmail.com','Sapna','Sinhar','Y',sysdate,sysdate);
insert into users(id,email,first_name,last_name,active,inserted_at,updated_at) values(5,'sapna005@gmail.com','Sapna','Sinhar','Y',sysdate,sysdate);
insert into users(id,email,first_name,last_name,active,inserted_at,updated_at) values(6,'sapna006@gmail.com','Sapna','Sinhar','Y',sysdate,sysdate);
insert into users(id,email,first_name,last_name,active,inserted_at,updated_at) values(7,'sapna007@gmail.com','Sapna','Sinhar','Y',sysdate,sysdate);
insert into users(id,email,first_name,last_name,active,inserted_at,updated_at) values(8,'sapna008@gmail.com','Sapna','Sinhar','Y',sysdate,sysdate);
insert into users(id,email,first_name,last_name,active,inserted_at,updated_at) values(9,'sapna009@gmail.com','Sapna','Sinhar','Y',sysdate,sysdate);
insert into users(id,email,first_name,last_name,active,inserted_at,updated_at) values(10,'sapna010@gmail.com','Sapna','Sinhar','Y',sysdate,sysdate);

create table roles (
   id          INTEGER                   not null,
   name        varchar(255)             not null,
   inserted_at timestamp with time zone not null,
   updated_at  timestamp with time zone not null,
   constraint pk_roles primary key (id)
);

insert into roles(id,name,inserted_at,updated_at) values(1,'Customer',sysdate,sysdate);
insert into roles(id,name,inserted_at,updated_at) values(1,'SuperAdmin',sysdate,sysdate);
insert into roles(id,name,inserted_at,updated_at) values(1,'Admin',sysdate,sysdate);
insert into roles(id,name,inserted_at,updated_at) values(1,'Dealer',sysdate,sysdate);
insert into roles(id,name,inserted_at,updated_at) values(1,'Shipper',sysdate,sysdate);

create table user_roles (
   user_id     integer                  not null,
   role_id     integer                  not null,
   inserted_at timestamp with time zone not null,
   updated_at  timestamp with time zone not null,
   constraint pk_user_roles primary key (user_id,role_id)
);

insert into user_roles(user_id,role_id,inserted_at,updated_at) values(1,1,sysdate,sysdate);
insert into user_roles(user_id,role_id,inserted_at,updated_at) values(1,2,sysdate,sysdate);
insert into user_roles(user_id,role_id,inserted_at,updated_at) values(1,3,sysdate,sysdate);
insert into user_roles(user_id,role_id,inserted_at,updated_at) values(1,4,sysdate,sysdate);
insert into user_roles(user_id,role_id,inserted_at,updated_at) values(1,5,sysdate,sysdate);

create table categories (
   id          INTEGER                   not null,
   name        varchar(255)             not null,
   parent_id   integer                          ,
   inserted_at timestamp with time zone not null,
   updated_at  timestamp with time zone not null,
   constraint pk_categories primary key (id)
);

insert into categories(id,name,parent_id,inserted_at,updated_at) values (1,'Electronics',0,sysdate,sysdate);
insert into categories(id,name,parent_id,inserted_at,updated_at) values (2,'Clothing',0,sysdate,sysdate);
insert into categories(id,name,parent_id,inserted_at,updated_at) values (3,'Mobiles',1,sysdate,sysdate);
insert into categories(id,name,parent_id,inserted_at,updated_at) values (4,'Laptops',1,sysdate,sysdate);
insert into categories(id,name,parent_id,inserted_at,updated_at) values (5,'Menswear',2,sysdate,sysdate);

create table products (
   id                INTEGER                   not null      ,
   sku               varchar(255)             not null      ,
   name              varchar(255)             not null      ,
   description       varchar(500)                                   ,
   product_status_id integer                  not null      ,
   regular_price     INTEGER                   default 0    ,
   discount_price    INTEGER                   default 0    ,
   quantity          INTEGER                   default 0    ,
   taxable           CHAR(1)                   default 'N',
   inserted_at       timestamp with time zone not null      ,
   updated_at        timestamp with time zone not null      ,
   constraint pk_products primary key (id)
);

insert into products(id,sku,name,description,product_status_id,regular_price,discount_price,quantity,taxable,inserted_at,updated_at) values (1,'HP-001','HP Pavilion','Next Gen Laptop',1,50000,40000,10,'Y',sysdate,sysdate);
insert into products(id,sku,name,description,product_status_id,regular_price,discount_price,quantity,taxable,inserted_at,updated_at) values (2,'DELL-001','Dell Latitude','Brand new laptop for best gaming experience',1,70000,60000,5,'N',sysdate,sysdate);
insert into products(id,sku,name,description,product_status_id,regular_price,discount_price,quantity,taxable,inserted_at,updated_at) values (3,'JEANS-001','Mens High Quality Readymade','Comfortable Jeans',2,4000,2000,100,'N',sysdate,sysdate);
insert into products(id,sku,name,description,product_status_id,regular_price,discount_price,quantity,taxable,inserted_at,updated_at) values (4,'JEANS-002','Mens Easy Washable','Simple and Neat',2,4000,2000,100,'N',sysdate,sysdate);
insert into products(id,sku,name,description,product_status_id,regular_price,discount_price,quantity,taxable,inserted_at,updated_at) values (4,'JEANS-003','Afforadable and Casual Jeans','Best quality for cheaper price',2,1000,1000,200,'N',sysdate,sysdate);
insert into products(id,sku,name,description,product_status_id,regular_price,discount_price,quantity,taxable,inserted_at,updated_at) values (6,'MAC-001','Macintosh Latest OS','Brand new from Apple',1,170000,160000,8,'Y',sysdate,sysdate);
insert into products(id,sku,name,description,product_status_id,regular_price,discount_price,quantity,taxable,inserted_at,updated_at) values (7,'DELL-002','Dell Latitude','Brand new laptop for best gaming experience',1,70000,60000,5,'N',sysdate,sysdate);
insert into products(id,sku,name,description,product_status_id,regular_price,discount_price,quantity,taxable,inserted_at,updated_at) values (8,'DELL-003','Dell Longitude','New laptop from Dell for best battery power',1,70000,60000,5,'Y',sysdate,sysdate);
insert into products(id,sku,name,description,product_status_id,regular_price,discount_price,quantity,taxable,inserted_at,updated_at) values (9,'DELL-004','Dell USB Mouse','USB optical mouse',1,500,500,100,'N',sysdate,sysdate);
insert into products(id,sku,name,description,product_status_id,regular_price,discount_price,quantity,taxable,inserted_at,updated_at) values (10,'MAC-002','iPhone','Best experience mobile',1,70000,60000,10,'Y',sysdate,sysdate);

create table tags (
   id          INTEGER                   not null,
   name        varchar(255)             not null,
   inserted_at timestamp with time zone not null,
   updated_at  timestamp with time zone not null,
   constraint pk_tags primary key (id)
);

insert into product_tags(id,name,inserted_at,updated_at) values (1,'Brand',sysdate,sysdate);
insert into product_tags(id,name,inserted_at,updated_at) values (2,'Title',sysdate,sysdate);
insert into product_tags(id,name,inserted_at,updated_at) values (3,'Product number',sysdate,sysdate);
insert into product_tags(id,name,inserted_at,updated_at) values (4,'Item name',sysdate,sysdate);
insert into product_tags(id,name,inserted_at,updated_at) values (5,'Manufactured date',sysdate,sysdate);

create table sales order ( 
   id          INTEGER                   not null,
   order_date  date                     not null,
   total       numeric                  not null,
   coupon_id   integer                          ,
   session_id  varchar(255)             not null,
   user_id     integer                  not null,
   inserted_at timestamp with time zone not null,
   updated_at  timestamp with time zone not null,
   constraint pk_sales_orders primary key (id)
);

insert into sales order(id,order_date,total,coupon_id,session_id,user_id,inserted_at,updated_at) values (1,'15-August','Five','123','123',sysdate,sysdate);
insert into sales order(id,order_date,total,coupon_id,session_id,user_id,inserted_at,updated_at) values (2,'15-August','Six','1234','01',sysdate,sysdate);
insert into sales order(id,order_date,total,coupon_id,session_id,user_id,inserted_at,updated_at) values (3,'15-August','Five','1235','022',sysdate,sysdate);
insert into sales order(id,order_date,total,coupon_id,session_id,user_id,inserted_at,updated_at) values (4,'15-August','Eight','1236','012',sysdate,sysdate);
insert into sales order(id,order_date,total,coupon_id,session_id,user_id,inserted_at,updated_at) values (5,'15-August','Ten','1237','013',sysdate,sysdate);
insert into sales order(id,order_date,total,coupon_id,session_id,user_id,inserted_at,updated_at) values (6,'15-August','Two','1238','021',sysdate,sysdate);
insert into sales order(id,order_date,total,coupon_id,session_id,user_id,inserted_at,updated_at) values (7,'15-August','One','1239','011',sysdate,sysdate);
insert into sales order(id,order_date,total,coupon_id,session_id,user_id,inserted_at,updated_at) values (8,'15-August','Three','1230','031',sysdate,sysdate);
insert into sales order(id,order_date,total,coupon_id,session_id,user_id,inserted_at,updated_at) values (9,'15-August','Five','1231','014',sysdate,sysdate);
insert into sales order(id,order_date,total,coupon_id,session_id,user_id,inserted_at,updated_at) values (10,'15-August','Four','1232','511',sysdate,sysdate);


create table coupons (
   id          INTEGER                   not null      ,
   code        varchar(255)             not null      ,
   description varchar(500)                                   ,
   active      CHAR(1)                      default 'Y' ,
   value       INTEGER                                ,
   multiple    CHAR(1)                      default 'N',
   start_date  timestamp with time zone               ,
   end_date   timestamp with time zone               ,
   inserted_at timestamp with time zone not null      ,
   updated_at  timestamp with time zone not null      ,
   constraint pk_coupons primary key (id)
);

create table product_tags (
   product_id  integer                  not null,
   tag_id      integer                  not null,
   inserted_at timestamp with time zone not null,
   updated_at  timestamp with time zone not null,
   constraint pk_product_tags primary key (product_id,tag_id)
);

insert into product_tags(id,tag_id,inserted_at,updated_at) values (1,'123',sysdate,sysdate);
insert into product_tags(id,tag_id,inserted_at,updated_at) values (2,'124',sysdate,sysdate);
insert into product_tags(id,tag_id,inserted_at,updated_at) values (3,'125',sysdate,sysdate
insert into product_tags(id,tag_id,inserted_at,updated_at) values (4,'126',sysdate,sysdate);
insert into product_tags(id,tag_id,inserted_at,updated_at) values (5,'127',sysdate,sysdate);


create table cc_transactions (
   id                 INTEGER                   not null,
   code               varchar(255)                     ,
   order_id           integer                  not null,
   transdate          timestamp with time zone         ,
   processor          varchar(255)             not null,
   processor_trans_id varchar(255)             not null,
   amount             INTEGER                  not null,
   cc_num             varchar(255)                     ,
   cc_type            varchar(255)                     ,
   response           varchar(500)                               ,
   inserted_at        timestamp with time zone not null,
   updated_at         timestamp with time zone not null,
   constraint pk_cc_transactions primary key (id)
);

create table sessions (
   id          varchar(255)             not null,
   data        varchar(500)                             ,
   inserted_at timestamp with time zone not null,
   updated_at  timestamp with time zone not null,
   constraint pk_sessions primary key (id)
);

insert into sessions(id,data,inserted_at,updated_at) values (1,'product',0,sysdate,sysdate);
insert into sessions(id,data,inserted_at,updated_at) values (2,'Abc',0,sysdate,sysdate);
insert into sessions(id,data,inserted_at,updated_at) values (3,'Abc',0,sysdate,sysdate);
insert into sessions(id,data,inserted_at,updated_at) values (4,'Abc',0,sysdate,sysdate);
insert into sessions(id,data,inserted_at,updated_at) values (5,'Abc',0,sysdate,sysdate);



create table product_statuses (
   id          INTEGER                   not null,
   name        varchar(255)             not null,
   inserted_at timestamp with time zone not null,
   updated_at  timestamp with time zone not null,
   constraint pk_product_statuses primary key (id)
);

insert into product_statuses(id,name,inserted_at,updated_at) values (1,'IN STOCK',sysdate,sysdate);
insert into product_statuses(id,name,inserted_at,updated_at) values (2,'OUT OF STOCK',sysdate,sysdate);
insert into product_statuses(id,name,inserted_at,updated_at) values (3,'ORDER PLACED',sysdate,sysdate);
insert into product_statuses(id,name,inserted_at,updated_at) values (4,'DAMAGED',sysdate,sysdate);
insert into product_statuses(id,name,inserted_at,updated_at) values (5,'IN WAREHOUSE',sysdate,sysdate);


create table product_categories (
   category_id integer                  not null,
   product_id  integer                  not null,
   inserted_at timestamp with time zone not null,
   updated_at  timestamp with time zone not null,
   constraint pk_product_categories primary key (category_id,product_id)
);

insert into product_categories(id,name,inserted_at,updated_at) values (1,'Clothing',0,sysdate,sysdate)
insert into product_categories(id,name,inserted_at,updated_at) values (2,'Electronic',0,sysdate,sysdate);
insert into product_categories(id,name,inserted_at,updated_at) values (3,'Women wear',2,sysdate,sysdate);
insert into product_categories(id,name,inserted_at,updated_at) values (4,'Tablets',1,sysdate,sysdate);
insert into product_categories(id,name,inserted_at,updated_at) values (5,'Tops',1,sysdate,sysdate);





create table order_products (
   id          INTEGER                   not null,
   order_id    INTEGER                          ,
   sku         varchar(255)             not null,
   name        varchar(255)             not null,
   description varchar(500)                             ,
   price       INTEGER                  not null,
   quantity    INTEGER                  not null,
   subtotal    numeric                  not null,
   inserted_at timestamp with time zone not null,
   updated_at  timestamp with time zone not null,
   constraint pk_order_products primary key (id)
);

insert into order_products(id,order_id,sku,name,description,price,quantity,subtotal,inserted_at,updated_at) values (1,'1234','toys02','easy to play for children','200','10','2000',sysdate,sysdate);
insert into order_products(id,order_id,sku,name,description,price,quantity,subtotal,inserted_at,updated_at) values (2,'1235','jeans03','comfortable to waer','1500','100','200000',sysdate,sysdate);
insert into order_products(id,order_id,sku,name,description,price,quantity,subtotal,inserted_at,updated_at) values (3,'1232','furniture04','high quality','5000','10','500000',sysdate,sysdate);
insert into order_products(id,order_id,sku,name,description,price,quantity,subtotal,inserted_at,updated_at) values (4,'1231','toys02','simple to operate','200','10','2000',sysdate,sysdate);
insert into order_products(id,order_id,sku,name,description,price,quantity,subtotal,inserted_at,updated_at) values (5,'1236','toys02','best for children','200','10','2000',sysdate,sysdate);
insert into order_products(id,order_id,sku,name,description,price,quantity,subtotal,inserted_at,updated_at) values (6,'1237','toys02','chiper in price','200','10','2000',sysdate,sysdate);
insert into order_products(id,order_id,sku,name,description,price,quantity,subtotal,inserted_at,updated_at) values (7,'1238','chair04','best quality','600','10','6000',sysdate,sysdate);
insert into order_products(id,order_id,sku,name,description,price,quantity,subtotal,inserted_at,updated_at) values (8,'1239','sofa04','afordable for everyone','1700','10','17000',sysdate,sysdate);
insert into order_products(id,order_id,sku,name,description,price,quantity,subtotal,inserted_at,updated_at) values (9,'1230','jeans03','easy to wear','1000','10','10000',sysdate,sysdate);
insert into order_products(id,order_id,sku,name,description,price,quantity,subtotal,inserted_at,updated_at) values (10,'1233','toys02','not breakable','200','10','2000',sysdate,sysdate);



alter table sales_orders add constraint fk_session_sales_order 
    foreign key (session_id)
    references sessions (id);

CREATE SEQUENCE sales_orders_sequence
START WITH     1000
INCREMENT BY   1
NOCACHE
NOCYCLE;

CREATE SEQUENCE product_statuses_sequence
START WITH     2000
INCREMENT BY   1
NOCACHE
NOCYCLE;

CREATE SEQUENCE coupons_sequence
START WITH     3000
INCREMENT BY   1
NOCACHE
NOCYCLE;


CREATE INDEX users_email_index
ON users(email);

CREATE INDEX catagories_name_index
ON categories(name);

CREATE INDEX cc_transactions_transdate_index
ON cc_transactions(transdate);

CREATE OR REPLACE TRIGGER update_products_status_when_sold_out
    AFTER 
    INSERT OR UPDATE 
    ON products
    FOR EACH ROW
DECLARE
    product_id integer;
BEGIN
    IF :new.quantity <= 0 THEN
        UPDATE products SET product_status_id=2 where id=:new.id;
    END IF;
END;

CREATE OR REPLACE TRIGGER invalidate_coupon
    AFTER 
    INSERT OR UPDATE 
    ON sales_orders
    FOR EVERY ROW
DECLARE
    current_date timestamp with time zone;
BEGIN
    SELECT sysdate into current_date from dual;
    IF :new.order_date > current_date THEN
        UPDATE coupons SET active='N' where id=:new.coupon_id;
    END IF;
END;
       

CREATE OR REPLACE PROCEDURE print_user_information(
    user_id INTEGER 
)
IS
  user_record users%ROWTYPE;
BEGIN
  SELECT *
  INTO user_record
  FROM users
  WHERE id = user_id;
  dbms_output.put_line( user_record.email || ' ' || user_record.first_name || user_record.last_name || user_record.active );
EXCEPTION
   WHEN OTHERS THEN
      dbms_output.put_line( SQLERRM );
END;

CREATE OR REPLACE PROCEDURE calculate_discount(
    amount INTEGER,
    percent INTEGER
)
IS
  discounted_price INTEGER;
BEGIN
  discounted_price := amount * (percent / 100);
  dbms_output.put_line( 'Discounted price ' || TO_CHAR(discounted_price) );
EXCEPTION
   WHEN OTHERS THEN
      dbms_output.put_line( SQLERRM );
END;

CREATE OR REPLACE FUNCTION is_coupon_valid(coupon_date IN timestamp)
RETURN CHAR
IS
    is_valid CHAR(1);
    current_date TIMESTAMP;
BEGIN
    SELECT sysdate into current_date from dual;
    IF coupon_date > current_date THEN
        is_valid := 'Y';
    ELSE
        is_valid := 'N';
    END IF;
    RETURN is_valid;
END;

CREATE OR REPLACE FUNCTION is_transaction_eligibile_for_cc(transaction_amount IN INTEGER)
RETURN CHAR
IS
    is_valid CHAR(1);
BEGIN
    IF transaction_amount >= 500 THEN
        is_valid := 'Y';
    ELSE
        is_valid := 'N';
    END IF;
    RETURN is_valid;
END;