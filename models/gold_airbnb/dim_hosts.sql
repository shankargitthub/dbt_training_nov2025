SELECT
    host_id,
    NVL(host_name, 'Anonymous') as host_name,
    is_superhost,
    created_at,
    updated_at
FROM DEV.silver_airbnb.silver_hosts