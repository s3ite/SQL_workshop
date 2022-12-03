UPDATE stock
SET 
stock = stock.stock + 3
FROM stock as st 
INNER JOIN album ON album.id = st.alb_id 
WHERE 'Traces' iLIKE name
