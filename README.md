# SQL Note
Note for SQL practice

## LeetCode SQL
[LeetCode SQL Problems](https://github.com/kamyu104/LeetCode-Solutions#sql)

|  #  | Title           |  Solution       | Difficulty    | Tag           |
|-----|---------------- | --------------- | ------------- |---------------|
0175 | [Combine Two Tables](https://leetcode.com/problems/combine-two-tables/) | [MySQL](./LeetCode/combine-two-tables.sql) | Easy         ||
0176 | [Second Highest Salary](https://leetcode.com/problems/second-highest-salary/) | [MySQL](./LeetCode/second-highest-salary.sql) | Easy         ||
0177 | [Nth Highest Salary](https://leetcode.com/problems/nth-highest-salary/) | [Set Method](./LeetCode/nth-highest-salary-1.sql)/ [Window Function](./LeetCode/nth-highest-salary-2.sql)| Medium        |Window Function, Set|
0178 | [Rank Scores](https://leetcode.com/problems/rank-scores/) | [MySQL](./LeetCode/rank-scores.sql) | Medium         ||
0180 | [Consecutive Numbers](https://leetcode.com/problems/consecutive-numbers/) | [MySQL](./LeetCode/consecutive-numbers.sql)/ [WF+CTE](./LeetCode/consecutive-numbers-1.sql)| Medium         |Join, Window Function|
0181 | [Employees Earning More Than Their Managers](https://leetcode.com/problems/employees-earning-more-than-their-managers/) | [MySQL](./LeetCode/employees-earning-more-than-their-managers.sql) | Easy         ||
0182 | [Duplicate Emails](https://leetcode.com/problems/duplicate-emails/) | [Join](./LeetCode/duplicate-emails.sql)/ [Group By](./LeetCode/duplicate-emails-1.sql) | Easy         |Group By|
0183 | [Customers Who Never Order](https://leetcode.com/problems/customers-who-never-order/) | [Join](./LeetCode/customers-who-never-order.sql) | Easy         ||
0184 | [Department Highest Salary](https://leetcode.com/problems/department-highest-salary/) | [WF+CTE](./LeetCode/department-highest-salary.sql) | Medium         |Window Function, CTE|
0185 | [Department Top Three Salaries](https://leetcode.com/problems/department-top-three-salaries/) | [WF+CTE](./LeetCode/department-top-three-salaries.sql) | Hard         |Window Function, CTE|
0196 | [Delete Duplicate Emails](https://leetcode.com/problems/delete-duplicate-emails/) | [MySQL](./LeetCode/delete-duplicate-emails.sql) | Easy         ||
0197 | [Rising Temperature](https://leetcode.com/problems/rising-temperature/) | [MySQL](./LeetCode/rising-temperature.sql) | Easy         |Date|
0262 | [Trips and Users](https://leetcode.com/problems/trips-and-users/) | [CASE](./LeetCode/trips-and-users.sql) | Hard         |CASE Statement|

### Notes
1. Thinking about when should use 'DISTICT' in SELECT satement
2. `SELECT () AS ...` Should be used one more time outsied the main SELECT when 'null' is needed to output
3. Set Method
4. Window Fuction - [link](https://mode.com/sql-tutorial/sql-window-functions/)
    
    `SUM(...)/COUNT(...)/AVG(...)/ROW_NUMBER()/RANK()/DENSE_RANK()/NTILE(n)/LAG(... , n)/LEAD(... , n) OVER (PARTITION BY ... ORDER BY ...)`
    
    - `RANK()` would give the identical rows a rank of 2, then skip ranks 3 and 4, so the next result would be 5
    - `DENSE_RANK()` would still give all the identical rows a rank of 2, but the following row would be 3—no ranks would be skipped.
    - `NTILE(*# of buckets*)` : NTILE(4) quartile, NTILE(100) percentile
    - `LAG/LEAD()` : LAG or LEAD to create columns that pull values from other rows—all you need to do is enter which column to pull from and how many rows away you'd like to do the pull. LAG pulls from previous rows and LEAD pulls from following rows
5. Common Table Expression (CTE)

    `WITH cte_name (column_list) AS (
        query
    ) 
    SELECT * FROM cte_name;`
6. Date function

    - `DATEDIFF(date1, date2)` : difference of date1 - date2

7. CASE Statement

    - `CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;`