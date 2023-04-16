import { createClient } from '@supabase/supabase-js'

const supabaseUrl = 'https://glkotvdjsehkcmgfuacc.supabase.co'
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa290dmRqc2Voa2NtZ2Z1YWNjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY3OTY5MzI3OCwiZXhwIjoxOTk1MjY5Mjc4fQ.PoAGMCc4THvy2x9KZl2zCGbDAJOuSyV4HrhIv1CEDRM'
const supabase = createClient(supabaseUrl, supabaseKey)

export { supabase }
