SELECT 
    user_id, 
    COUNT(*) AS total_bookings,
    COUNT(CASE WHEN status = 'CANCELLED' THEN 1 END) AS cancelled_bookings
FROM 
    Bookings
GROUP BY 
    user_id
HAVING 
    COUNT(*) >= 10 
    AND COUNT(CASE WHEN status = 'CANCELLED' THEN 1 END) > 5;