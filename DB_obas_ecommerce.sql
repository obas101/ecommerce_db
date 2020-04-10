CREATE SCHEMA obasstore;
CREATE TABLE users (
customer_id INT(11) PRIMARY KEY AUTO_INCREMENT,
userFirstName VARCHAR (50) NOT NULL,
userLastName VARCHAR (50) NOT NULL,
userdob DATE NOT NULL,
userPhoneNumber VARCHAR (20) NOT NULL,
userAddress VARCHAR (255),
userEmail VARCHAR (255) NOT NULL UNIQUE,
userCity VARCHAR (255) NOT NULL,
userState VARCHAR (255) NOT NULL,
userCountry VARCHAR (255) NOT NULL,
userRegistrationDate DATE,
userPassword VARCHAR (255)
);

CREATE TABLE products (
productId INT(11) PRIMARY KEY AUTO_INCREMENT,
productName VARCHAR (255) NOT NULL,
productDescription VARCHAR (255) NOT NULL,
productPrice DECIMAL (15,2) NOT NULL,
productDiscountPrice DECIMAL (15,2),
productQuantity INT(11),
productViews INT(11),
productLikes INT(11),
productStatus VARCHAR (50),
productRating INT(5),
productThumb VARCHAR (255) NOT NULL,
productImage1 VARCHAR (255),
productImage3 VARCHAR (255),
productImage4 VARCHAR (255)
);

CREATE TABLE categories (
categoryId INT(11) PRIMARY KEY AUTO_INCREMENT,
categoryName VARCHAR (255),
categoryProductId INT(11),
FOREIGN KEY (categoryProductId) REFERENCES products(productId)
);

CREATE TABLE reviews (
reviewId INT(11) PRIMARY KEY AUTO_INCREMENT,
reviewRating INT(5) NOT NULL,
reviewMessage VARCHAR (255) NOT NULL,
reviewProductId INT(11) NOT NULL,
FOREIGN KEY (reviewProductId) REFERENCES products(productId)
);

CREATE TABLE orders (
orderId INT(11) PRIMARY KEY AUTO_INCREMENT,
orderDate DATE,
orderQuantity INT(11),
orderProductId INT(11),
orderCustomerId INT(11),
FOREIGN KEY (orderProductID) REFERENCES products(productId),
FOREIGN KEY (orderCustomerID) REFERENCES customers(customerId)
);

CREATE TABLE payments (
paymentID INT(11) PRIMARY KEY AUTO_INCREMENT,
paymentDate DATE,
paymentCardHolderName VARCHAR (50),
paymentCardType VARCHAR (50),
paymentStatus VARCHAR (50) NOT NULL,
paymentAmountPaid DECIMAL (15,2),
paymentOrderId INT(11),
FOREIGN KEY (paymentOrderID) REFERENCES orders(orderId)
);

CREATE TABLE shipping (
shippingId INT(11) PRIMARY KEY AUTO_INCREMENT,
shippingDate DATE,
shippingFee DECIMAL (15,2),
shippingAddress VARCHAR (255),
shippingState VARCHAR (255),
shippingCity VARCHAR (255),
shippingStatus VARCHAR (45),
shippingOrderId INT(11),
shippingPaymentId INT(11),
shippingCustomerId INT(11),
FOREIGN KEY (shippingCustomerId) REFERENCES customers(customerId),
FOREIGN KEY (shippingPaymentId) REFERENCES payments(paymentId),
FOREIGN KEY (shippingOrderId) REFERENCES orders(orderId)
);
