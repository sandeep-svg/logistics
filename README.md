
# logistics

fetch branch master from repo https://github.com/sandeep-svg/logistics

make sure mysql installed in your system and then run **bundle install**

login to local mysql using **mysql -u root -p**

run **SET PASSWORD FOR 'root'@'localhost' = 'logistics_12#';**

then rails db:create

rails db:migrate:status

rails db:migrate:up

goto localhost:3000 and create account and login then create some cards add add them to cart
