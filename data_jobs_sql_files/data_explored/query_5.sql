/*
TASK: Based on top 5 skills for Data Analyst roles, What other Data related role require the same skills?
      - The top 5 skills for Data Analyst roles are: 'sql','python','excel','power bi','tableau' - Based on query_3.sql and query_4.sql results.
      - Gathering other Data related roles excluding Data Analyst roles.
      - Counting the occurrences of each skill required for other Data related roles.
      - Ordering the results based on the skill order mentioned above and then by the count of skills
*/


SELECT 
    skills_dim.skills,
    COUNT(*) AS skills_count,
    job_postings_fact.job_title_short	   
FROM 
    job_postings_fact
LEFT JOIN skills_job_dim ON job_postings_fact.job_id=skills_job_dim.job_id
LEFT JOIN skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id
WHERE 
    job_postings_fact.job_title_short NOT LIKE'%Data Analyst' AND 
    skills_dim.skills IN('sql','python','excel','power bi','tableau')
GROUP BY 
    job_postings_fact.job_title_short, skills_dim.skills
ORDER BY 
    CASE 
		WHEN skills_dim.skills='sql' THEN 1
		WHEN skills_dim.skills='python' THEN 2
		WHEN skills_dim.skills='excel' THEN 3
		WHEN skills_dim.skills='tableau' THEN 4
		WHEN skills_dim.skills='power bi' THEN 5
        ELSE 6
    END, 
    skills_count DESC