# Write your MySQL query statement below
SELECT DISTINCT s1.*
FROM stadium s1, stadium s2, stadium s3
WHERE s1.people >= 100 AND s2.people >= 100 AND s3.people>=100 AND
        (
            (s2.id-1=s1.id AND s3.id-1=s2.id AND s3.id-2=s1.id) OR
            (s3.id-1=s1.id AND s1.id-1=s2.id AND s3.id-2=s2.id) OR
            (s2.id-1=s1.id AND s1.id-1=s3.id AND s2.id-2=s3.id) OR
            (S1.id-1=s2.id AND s2.id-1=s3.id AND s1.id-2=s3.id)
        )
ORDER BY id 
