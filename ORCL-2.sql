select * from autopay_timelines;
select * from item;
select * from credit_card;

 SELECT  i.item_id,c.expiration,a.stop_date
    FROM    item i
    INNER JOIN  credit_card c ON c.credit_card_id = i.credit_card_id 
    INNER JOIN  autopay_timelines a ON a.item_id = i.item_id
    WHERE  i.active=0 and a.stop_date is null;


update autopay_timelines a set a.stop_date = (
    select c.expiration  
    FROM item i
    JOIN  credit_card c ON c.credit_card_id = i.credit_card_id
    WHERE  i.active=0
    and    i.item_id = a.item_id
    )
WHERE a.stop_date IS NULL
;

 UPDATE (
    SELECT    a.stop_date
    FROM    autopay_timelines a
    INNER JOIN item i on i.item_id = a.item_id
    INNER JOIN  credit_card c ON c.credit_card_id = i.credit_card_id
    WHERE  i.active=0 and a.stop_date is null
) 
SET stop_date = to_date('1-aug-2018');

    SELECT    a.stop_date,
            c.expiration
    FROM    item i
    JOIN  credit_card c ON c.credit_card_id = i.credit_card_id
    JOIN  autopay_timelines a ON a.item_id = i.item_id
    WHERE  i.active=0
    
SELECT      *
    FROM    item i
    INNER JOIN  credit_card c ON c.credit_card_id = i.credit_card_id
    INNER JOIN  autopay_timelines a ON a.item_id = i.item_id
    WHERE  i.active=0 and a.stop_date is null
    
UPDATE autopay_timelines
    INNER JOIN  credit_card c ON c.credit_card_id = i.credit_card_id
    INNER JOIN  autopay_timelines a ON a.item_id = i.item_id
    WHERE  i.active=0 and a.stop_date is null
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
