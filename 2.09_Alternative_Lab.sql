-- Alternative Lab 2.09

select a.inventory_id, a.film_id, count(l.rental_id) as 'TimesRented', l.rental_date, f.title, f.rating, b.category_id from inventory a
left join rental l on a.inventory_id = l.inventory_id
left join film f on a.film_id = f.film_id
left join film_category b on a.film_id=b.film_id 
group by f.title;




