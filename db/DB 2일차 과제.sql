use fishbread_db;
create table user(
	user_id int auto_increment primary key comment '사용자의 고유 ID',
    name VARCHAR(255) not null comment '사용자 이름',
    age int not null comment '사용자 나이',
    email varchar(100) unique comment '사용자 이메일',
    is_business boolean comment '비즈니스 사용 유무'
);
create table orders(
	order_id int auto_increment primary key comment '주문의 고유 ID',
    user_id int comment '사용자의 고유 ID',
    order_date date comment '주문 날짜',
    amount decimal(10, 2) comment '주문 금액',
    foreign key (user_id) references user(user_id)
);
create table inventory (
	item_id int primary key auto_increment comment '재고 항목의 고유 ID',
    item_name varchar(255) not null comment '재고 항목 이름',
    quantity int not null comment '재고 수량'
);
create table sales(
	sale_id int primary key auto_increment comment '판매의 고유 ID',
    order_id int comment '주문 ID',
    item_id int comment '재고 항목의 고유 ID',
    quantity_sold int not null comment '판매된 수량',
    foreign key (order_id) references orders(order_id),
    foreign key (item_id) references inventory(item_id)
);
create table daily_sales(
	date date primary key comment '날짜',
    total_sales decimal(10, 2) not null comment '총 매출' 
);