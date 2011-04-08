rails  generate nifty:scaffold  Item produit_id:integer nom_comercial:string tipe_id:integer dose:string quantite:integer
rails  generate nifty:scaffold Produit nom:string famille_med_id:integer
rails generate nifty:scaffold FamilleMed nom:string
rails generate nifty:scaffold Tipe nom:string
rails generate nifty:scaffold Operation fecha:date item_id:integer movement:integer
