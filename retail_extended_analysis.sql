
-- Clean missing values and compute profitability & inventory KPIs
drop table if exists retail_clean;
create table retail_clean as
select
  *,
  case when sales is null then 0 else sales end as Sales_Clean,
  case when profit is null then 0 else profit end as Profit_Clean,
  case when inventory_days is null then 0 else inventory_days end as InventoryDays_Clean
from transactions;

-- Aggregate KPI
select
  category,
  sub_category,
  sum(Sales_Clean) as Total_Sales,
  sum(Profit_Clean) as Total_Profit,
  sum(Profit_Clean)*1.0 / sum(Sales_Clean) as Profit_Margin,
  avg(InventoryDays_Clean) as Avg_Inventory_Days
from retail_clean
group by category, sub_category;
