# ================================= BONUSES
# 1) Create a bonus_db;

# 2) Create a migration and seeder file for the following table...
# products
# id  | name  | price | isSold
# ______________________________________
# 1 | widget  | 4.00  | true
# 2 | thing   | 2.00  | false
# 3 | whatsit | 9.00  | true
# 4 | gadget  | 3.00  | true
# For the migration, no column may be NULL
# For the seeder, use the following data:

# bike,250.00,true
# cat,100.00,false
# bat,30.00,true
# fish,50.00,false
# nes,200.00,true
# n64,300.00,false
# ps3,400.00,true
# dog,75.00,false
# drill,60.00,false

# 3) Create a user with full access to all tables on bonus_db called bonus_user
# 4) create a file called bonus_select.sql that has queries for the following:
# - get all information for all products that have been sold
# - get all information for all products that are over 100
# - get the name and sold status information for the ps3 product
# - get the price for the dog
# - get the sold status for all products over 199
# 5) create a file called bonus_update.sql that has queries for the following:
# (remember to first create selects then change to updates)
# - change the price of all items before id number 3 to 0
# - change the name of ps3 to ps4, price to 500.00, and sold status to false
# - change all sold values to false
# - change all sold values of items over 200 to true
# 6) create a file called bonus_delete.sql that has queries for the following:
#
# - delete records that have been sold
#     - delete all items under 50
#     - delete all records
# (remember you can rerun migration and seeder files to retest selects/updates/deletes)