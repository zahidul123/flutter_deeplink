import 'package:flutter/material.dart';
import 'package:flutter_deeplink/dashboard_page.dart';
import 'package:flutter_deeplink/product_details_page.dart';
import 'package:flutter_deeplink/product_list_page.dart';
import 'package:flutter_deeplink/review_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const DashboardPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'product/:product_type',
          builder: (BuildContext context, GoRouterState state) {
            var productType = state.pathParameters["product_type"].toString();
            return ProductListPage(productType: productType);
          },
        ),
        GoRoute(
            path: 'details/:product_type/:product_id',
            builder: (BuildContext context, GoRouterState state) {
              var productId =
                  int.parse(state.pathParameters["product_id"].toString());
              var productType = state.pathParameters["product_type"].toString();
              return ProductDetailsPage(
                productId: productId,
                productType: productType,
              );
            },
            ),
        GoRoute(
          path: 'review/:review_id',
          builder: (BuildContext context, GoRouterState state) {
            var productId = state.pathParameters["review_id"].toString();
            return ProductReview(productId);
          },
        )
      ],
    ),
  ],
);
