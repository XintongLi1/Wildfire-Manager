# Wildfire Manager
Detect and report Real-time Wildfire, forecast fire spreading speed and impact, notify the nearest fire station/brigade

Smoke intensity, direction and color

Impact: infrastucture/property and forest/environment damage, personnel casualties

Data retrieval: history wildfires of the area, temperature, humidity, terrain, ecology, vegetations, species and wind direction, wind speed

Report: number of volunteering participants and firefighters involved, situations (weather + fire), analysis and forecastion


## Database
### Table
1. Users: userID, role (ordinary users, firefighters), contactInfo, posts
2. Post: postID, author, time, description, images
3. Wildfire records: recordID, coordinates, time, windspeed, propertyLoss, casualties, posts
4. Area: areaID, region, coordinates, country, continent
5. Image: imageID, url, post
6. Coordinate: id, x, y, area, wildfire records


## Useful commands
npx prisma migrate dev --name 'test'
npx prisma generate

npm run devStart
npx prisma migrate reset
