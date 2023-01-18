Declare @JSON varchar(max)
SELECT @JSON=BulkColumn 
FROM OPENROWSET (BULK 'C:\Users\erikc\Desktop\guide\fixed_incomes_positions_ajustado.JSON', SINGLE_CLOB) as import
SELECT *
FROM OPENJSON (@JSON)
WITH 
(           [integrationHeaderId]	 Nvarchar(MAX)
           ,[type]					 Nvarchar(MAX)
           ,[id]					 Nvarchar(MAX)
           ,[reference_date]		 Nvarchar(MAX)
           ,[identification_document]Nvarchar(MAX)
           ,[sinacor_account]		 Nvarchar(MAX)
           ,[asset_code]			 Nvarchar(MAX)
           ,[investment_date]		 Nvarchar(MAX)
           ,[due_date]				 Nvarchar(MAX)
           ,[issue_date]			 Nvarchar(MAX)
           ,[isin]					 Nvarchar(MAX)
           ,[asset_kind]			 Nvarchar(MAX)
           ,[issuer_name]			 Nvarchar(MAX)
           ,[issuer_code]			 Nvarchar(MAX)
           ,[indexer_name]			 Nvarchar(MAX)
           ,[indexer_percent]		 Nvarchar(MAX)
           ,[pre_rate]				 Nvarchar(MAX)
           ,[amount]				 Nvarchar(MAX)
           ,[unit_price]			 Nvarchar(MAX)
           ,[net_value]				 Nvarchar(MAX)
           ,[value]					 Nvarchar(MAX)
           ,[tax_value]				 Nvarchar(MAX)
           ,[iof]					 Nvarchar(MAX)
           ,[blocked_amount]		 Nvarchar(MAX)
           ,[tax_free]				 Nvarchar(MAX)
           ,[asset_name]			 Nvarchar(MAX)
           ,[investment_value]		 Nvarchar(MAX)
           ,[cetip_selic_code]		 Nvarchar(MAX)
           ,[securitization_company] Nvarchar(MAX)
           ,[created_at]			 Nvarchar(MAX)
           ,[updated_at]			 Nvarchar(MAX)
		   )






