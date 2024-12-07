SELECT
*
FROM
prefectures as kenmei
LEFT JOIN regionGroup as chihou
ON kenmei.code = chihou.code
LEFT JOIN region as chihoumei
ON chihou.id = chihoumei.id
LEFT JOIN prefecturalOffice as kencho
ON kenmei.code = kencho.code
-- WHERE chihoumei.wname LIKE '%関東%'
-- WHERE chihoumei.wname IN ('九州', '沖縄')
WHERE chihoumei.wname = '九州'
ORDER BY kenmei.code;
