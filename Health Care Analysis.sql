SELECT * FROM ocd_patient_dataset;              
with data as (
SELECT
Gender,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as avg_obs_score

FROM ocd_patient_dataset
Group By 1
Order by 2
)

select
	
    sum(case when Gender = 'Female' then patient_count else 0 end) as count_female,
    sum(case when Gender = 'Male' then patient_count else 0 end) as count_male,
    round(sum(case when Gender = 'Female' then patient_count else 0 end)/
    (sum(case when Gender = 'Female' then patient_count else 0 end) + sum(case when Gender = 'Male' then patient_count else 0 end)) *100,2) as  pct_female
    from data;
    
    
    
  select Ethnicity ,count(`Patient ID` ) as patient_count ,
  avg(`Y-BOCS Score (Obsessions)`) as obs_score FROM ocd_patient_dataset GROUP BY 1 ORDER BY patient_count;
  
  ALTER TABLE ocd_patient_dataset 
  modify`OCD Diagnosis Date` date;
  

select
date_format(`OCD Diagnosis Date`, '%Y-%m-01 00:00:00') as month,
-- `OCD Diagnosis Date`
count(`Patient ID`) patient_count
from health_data.ocd_patient_dataset
group by 1
Order by 1
;

SELECT `Obsession Type` , count(`Patient ID`) as patient_count, round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
FROM ocd_patient_dataset
GROup by 1
Order by 2;

Select
`Compulsion Type`,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
from health_data.ocd_patient_dataset
group by 1
Order by 2
;



  
  
  




