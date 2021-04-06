function results = calculateArea(I)

% Segment
BW = createMask(I);

% Area in pixels
props = regionprops("table",BW,"Area");
areaPixels = sum(props.Area);

% Area in km^2
px2km = (51/20)^2;
areaKmSq = round(areaPixels*px2km);

% Format into structure
results.BW = BW;
results.areaKmSq = areaKmSq;