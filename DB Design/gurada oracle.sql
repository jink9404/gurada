CREATE TABLE store(
            store_id        VARCHAR2(15)                ,
            location        VARCHAR2(30)    NOT NULL    ,      
            post_code       VARCHAR2(6)     NOT NULL    ,
            tel             VARCHAR2(13)    NOT NULL    ,
            name            VARCHAR2(100)   NOT NULL    ,
            Latitude        NUMBER                      ,              --위도
            longitude       NUMBER                      ,              --경도
            CONSTRAINT  pk_store_id             PRIMARY KEY(store_id),
            CONSTRAINT  uq_store_tel            UNIQUE (tel)
);

CREATE TABLE booking(
            booking_id      VARCHAR2(15)                ,
            full_name      VARCHAR2(15)    NOT NULL    ,
            store_id        VARCHAR2(15)    NOT NULL    ,
            booking_date    date                        ,
            phone_number    VARCHAR2(13)    NOT NULL    ,
            CONSTRAINT  pk_booking_id           PRIMARY KEY(booking_id),
            CONSTRAINT  fk_booking_store_id     FOREIGN KEY(store_id)
            REFERENCES  store(store_id)
);

CREATE TABLE Member(
            member_no       VARCHAR2(15)                    ,
            password        VARCHAR2(64)    NOT NULL        ,
            email           VARCHAR2(50)    NOT NULL        ,
            name		VARCHAR2(15)    NOT NULL        ,
            address1       VARCHAR2(300)    				,
            address2         VARCHAR2(300)                   ,
            phone_number    VARCHAR2(13)    NOT NULL        ,
            post_code       VARCHAR2(6)                     ,
            signup_date     date            DEFAULT sysdate ,
            secession_date  date                            ,
            last_ip         VARCHAR2(15)                    ,
            gender          varchar2(6)     NOT NULL        ,
            marketing       varchar2(10)                    ,
            CONSTRAINT pk_member_no             PRIMARY KEY (member_no),
            CONSTRAINT uq_member_phoneNumber    UNIQUE (phone_number),
            CONSTRAINT ck_member_gender        CHECK (gender IN('남자','여자'))
);
CREATE TABLE category(
            category_ID     VARCHAR2(15),
            name            VARCHAR2(20)    NOT NULL        ,
            CONSTRAINT pk_category PRIMARY KEY (category_ID)
);

CREATE TABLE product(
            product_ID      VARCHAR2(15)                    ,
            name            VARCHAR2(20)    NOT NULL        ,
            price           NUMBER          NOT NULL        ,
            quantity        NUMBER          NOT NULL        ,
            receipt_date    date            DEFAULT sysdate ,
            category_ID     VARCHAR2(15)                    ,
            gender          VARCHAR2(6)     NOT NULL        ,
            detail          VARCHAR2(2000)                  ,
            p_size            VARCHAR2(4)                     ,
            CONSTRAINT pk_product_id            PRIMARY KEY (product_id),
            CONSTRAINT fk_product_category_id   FOREIGN KEY (category_ID)
            REFERENCES category(category_ID),
            CONSTRAINT ck_product_gender        CHECK (gender IN('남자','여자'))
);

CREATE TABLE wishlist(
            wishlist_no     VARCHAR2(15)                    ,
            member_no       VARCHAR2(15)    NOT NULL        ,
            product_ID      VARCHAR2(15)    NOT NULL        ,
            count           number          default 1       ,
            CONSTRAINT  pk_wishlist_no          PRIMARY KEY (wishlist_no),
            CONSTRAINT  fk_wishlist_member_no   FOREIGN KEY (member_no)
            REFERENCES  member(member_no),
            CONSTRAINT  fk_wishlist_product_ID  FOREIGN KEY (product_ID)
            REFERENCES  Product(product_id)
);

CREATE TABLE gurada_order(
            order_no        VARCHAR2(15)                        ,
            order_date      date                DEFAULT sysdate ,
            count           number              DEFAULT 1       ,
            total_price     number                              ,
            member_no       VARCHAR2(15)                        ,
            product_no      VARCHAR2(15)        NOT NULL        ,
            CONSTRAINT  pk_order_no             PRIMARY KEY (order_no),
            CONSTRAINT  fk_order_member_no      FOREIGN KEY (member_no)
            REFERENCES  member(member_no)                       ,
            CONSTRAINT  fk_order_product_no     FOREIGN KEY (product_no)
            REFERENCES  Product(product_id)
);

CREATE TABLE nonMember(
            order_no        VARCHAR2(15)                        ,
            nonMember_no    varchar2(15)                        ,
            phone_number    varchar2(13)                        ,
            first_name      varchar2(15)                        ,
            last_name       varchar2(15)                        ,
            address         varchar2(300)                       ,
            post_code       varchar2(6)                         ,
            CONSTRAINT Pk_nonmember_orderno     PRIMARY KEY (order_no),
            CONSTRAINT fk_nonmember_orderno     FOREIGN KEY (order_no)
            REFERENCES  gurada_order(order_no)
);

CREATE TABLE QnA(
            QnA_NO          VARCHAR2(15)                        ,
            writter         VARCHAR2(30)                        ,
            password        VARCHAR2(64)        NOT NULL        ,
            read_count      NUMBER              DEFAULT 0       ,
            written_date    DATE                DEFAULT SYSDATE ,
            contents        VARCHAR2(3000)                      ,
            member_no       VARCHAR2(15)                        ,
	    title	    VARCHAR2(50)
            CONSTRAINT  pk_QnA_no               PRIMARY KEY (qna_no),
            CONSTRAINT  fk_QnA_member_no        FOREIGN KEY (member_no)
            REFERENCES  member(member_no)
);

CREATE TABLE review(
            review_NO       VARCHAR2(15)                        ,
            writter         VARCHAR2(30)                        ,
            password        VARCHAR2(64)        NOT NULL        ,
            read_count      NUMBER              DEFAULT 0       ,
            written_date    DATE                DEFAULT SYSDATE ,
            contents        VARCHAR2(3000)                      ,
            member_no       VARCHAR2(15)                        ,
            CONSTRAINT  pk_review_no              PRIMARY KEY (review_NO),
            CONSTRAINT  fk_review_member_no       FOREIGN KEY (member_no)
            REFERENCES  member(member_no)
);

CREATE TABLE IMAGE(
            image_id        VARCHAR2(15),                        
            Product_IMG_URL VARCHAR2(500),
            Wearing_IMG_URL VARCHAR2(500),
            BOARD_IMG_URL   VARCHAR2(500),
            product_id      VARCHAR2(15),
            qna_no          VARCHAR2(15),
            review_no       VARCHAR2(15),
            CONSTRAINT  pk_image_id             PRIMARY KEY (image_id),
            CONSTRAINT  fk_image_product_id     FOREIGN KEY (product_id)
            REFERENCES  product(product_id),
            CONSTRAINT  fk_image_qna_id         FOREIGN KEY (QnA_NO)
            REFERENCES  QnA(QnA_NO),
            CONSTRAINT  fk_image_review_id      FOREIGN KEY (review_NO)
            REFERENCES  review(review_NO)
);

CREATE  SEQUENCE    seq_member_no
INCREMENT   BY      1
START       WITH    0
MINVALUE            0;

CREATE  SEQUENCE    seq_qna_no
INCREMENT   BY      1
START       WITH    0
MINVALUE            0;

CREATE  SEQUENCE    seq_store_no
INCREMENT   BY      1
START       WITH    0
MINVALUE            0;



ALTER table product modify (gender varchar2(6));

==========sh store 정보=================

insert into store (store_id,location,post_code,tel,name,Latitude,longitude)
values (seq_store_no.nextval,'서울특별시 강남구 압구정로','06010','02-3442-1830','프라다 청담점',37.526508,127.046301);

==========sh store 정보=================
