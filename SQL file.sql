SELECT * FROM yahoo_finance.yahoo_finance;

SELECT * FROM yahoo_finance.yahoo_finance WHERE `Last Price` > 100;
SELECT * FROM yahoo_finance.yahoo_finance WHERE `Market Cap` = 'N/A';
SELECT * FROM yahoo_finance.yahoo_finance WHERE `Change` > 0;
SELECT * FROM yahoo_finance.yahoo_finance WHERE `% Change` > 0;

select
	Name,
    Volume,
    case
		when Name = 'Bitcoin USD' then 'Blockchain'
        when Name = 'Solana USD' then 'Blockchain'
        when Name =  'Ethereum USD' then 'Blockchain'
        when Name =  'XRP USD' then 'Blockchain'
        when Name =  'Dogecoin USD' then 'Blockchain'
        
        else 
			'Stocks'
		end as 'Type'
        from yahoo_finance.yahoo_finance

SET SQL_SAFE_UPDATES = 0;

ALTER TABLE yahoo_finance.yahoo_finance
ADD Type VARCHAR(50);

UPDATE yahoo_finance.yahoo_finance
SET Type = CASE 
        WHEN Name = 'Bitcoin USD' THEN 'Blockchain'
        WHEN Name = 'Solana USD' THEN 'Blockchain'
        WHEN Name = 'Ethereum USD' THEN 'Blockchain'
        WHEN Name = 'XRP USD' THEN 'Blockchain'
        WHEN Name = 'Dogecoin USD' THEN 'Blockchain'
        ELSE 'Stocks'
    END;
    



