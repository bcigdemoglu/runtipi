DO $$
BEGIN
    IF NOT EXISTS (
        SELECT
            1
        FROM
            pg_enum
        WHERE
            enumlabel = 'restoring'::text
            AND enumtypid = 'public.app_status_enum'::regtype) THEN
    ALTER TYPE "public"."app_status_enum"
        ADD VALUE 'restoring';
END IF;
END
$$;
