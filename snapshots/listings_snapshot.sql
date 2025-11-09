{% snapshot listings_snapshot%}
{{
    config
    (
        schema = 'snapshots',
        database = 'dev',
        unique_key = 'listing_id',
        strategy = 'timestamp',   
        updated_at = 'updated_at',
        invalidate_hard_deletes = True
    )
}}


SELECT
listing_id, 
listing_name, 
listing_url, 
room_type, 
minimum_nights, 
host_id,
price_str, 
created_at, 
updated_at
FROM
{{ref('silver_listings')}}

{% endsnapshot %}