CREATE TABLE IF NOT EXISTS group_counts (
  group_index INTEGER PRIMARY KEY CHECK (group_index BETWEEN 0 AND 7),
  count INTEGER NOT NULL DEFAULT 0 CHECK (count BETWEEN 0 AND 11)
);
INSERT INTO group_counts (group_index, count) VALUES (0,0),(1,0),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0) ON CONFLICT (group_index) DO NOTHING;
CREATE TABLE IF NOT EXISTS submissions (
  id BIGSERIAL PRIMARY KEY,
  public_id TEXT UNIQUE NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  name TEXT NOT NULL,
  scores JSONB NOT NULL,
  group_index INTEGER NOT NULL CHECK (group_index BETWEEN 0 AND 7)
);
CREATE INDEX IF NOT EXISTS submissions_created_at_idx ON submissions(created_at DESC);
