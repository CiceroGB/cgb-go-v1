CREATE TABLE IF NOT EXISTS payments (
    correlation_id UUID PRIMARY KEY,
    amount DECIMAL(10, 2) NOT NULL,
    processed_by VARCHAR(10) NOT NULL,
    requested_at_utc TIMESTAMP WITH TIME ZONE NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_requested_at_utc ON payments(requested_at_utc);