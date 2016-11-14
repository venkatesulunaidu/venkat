var myapp=angular.module("myapp",[])
.controller("batController", function($scope,$http){
	$scope.getbatList=function(){
		
		$http.get('http://localhost:8014/cricketbat/getbatList').success(function(data){
			$scope.bat=data;
			alert('getting bat list');
		})
	}
	$scope.addToCart=function(SID){
		$http.put('http://localhost:8014/cricketbat/cart/add/'+SID).success(function(){
			alert('Added succesfully');
		})
	}
	$scope.refreshCart=function(){
		$http.get('http://localhost:8014/cricketbat/cart/getCart/'+$scope.cartId).success(function(data){
			$scope.cart=data;
			alert('cart is refreshed');
		})
	    } 
	    $scope.getCart=function(cartId){
		$scope.cartId=cartId;
		$scope.refreshCart(cartId);
	    }

	    $scope.removeFromCart=function(cartItemId){
			$http.put('http://localhost:8014/cricketbat/cart/removecartitem/'+cartItemId)
		.success(function(){
			$scope.refreshCart();
		})
	    }

	    $scope.clearCart=function(){
			$http.put('http://localhost:8014/cricketbat/cart/removeAllItems/'+$scope.cartId)
		.success(function(){
			$scope.refreshCart();
			alert('cart is cleared');
		});
	    }

	    $scope.calculateGrandTotal=function(){
		var grandTotal=0.0
		for(var i=0;i<$scope.cart.cartItem.length;i++)
			grandTotal=grandTotal+$scope.cart.cartItem[i].totalprice;
		return grandTotal;
	}

});