import postgres from 'postgres'

const sql = postgres('postgresql://postgres:40*Rahemza@777@10.5.10.7:5432/db_rahemza_colex') // will use psql environment variables

export default sql