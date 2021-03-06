% Set easy-to-read metrics, fonts, ...

set(0, 'DefaultAxesFontName', 'DejaVuSans')
set(0, 'DefaultTextFontName', 'DejaVuSans')
set(0, 'DefaultFigurePaperUnits', 'inches')
set(0, 'DefaultFigurePaperSize', [4, 4])
set(0, 'DefaultFigurePaperPosition', [0 0 [4, 4]])
set(0, 'DefaultLineMarkerSize', 6)


% Finite points (in sphere arrangement)

load finite_3D_points.mat

points_r = 4;
cam_pose_offset = 40.;
max_sideways = 12.;
max_towards = 12.;

points_3D = finite_3D_points * points_r;

figure(1)
plot(points_3D(:, 1), points_3D(:, 3), 'b.')
xlabel('X-coordinate of 3D point')
ylabel('Z-coordinate of 3D point')
saveas(gcf, ['figures/points_3D_finite_top.pdf'])
figure(2)
plot(points_3D(:, 1), points_3D(:, 2), 'b.')
set(gca, 'YDir', 'reverse')
xlabel('X-coordinate of 3D point')
ylabel('Y-coordinate of 3D point')
saveas(gcf, ['figures/points_3D_finite_front.pdf'])


% Scene points (see "scene_3D_points.blend" file)

load scene_3D_points.mat

points_r = 3;
cam_pose_offset = 40;
max_sideways = 11.;
max_towards = 11.;

points_3D = scene_3D_points * points_r;

figure(3)
plot(points_3D(:, 1), points_3D(:, 3), 'b.')
xlabel('X-coordinate of 3D point')
ylabel('Z-coordinate of 3D point')
saveas(gcf, ['figures/points_3D_scene_top.pdf'])
figure(4)
plot(points_3D(:, 1), points_3D(:, 2), 'b.')
set(gca, 'YDir', 'reverse')
xlabel('X-coordinate of 3D point')
ylabel('Y-coordinate of 3D point')
saveas(gcf, ['figures/points_3D_scene_front.pdf'])
