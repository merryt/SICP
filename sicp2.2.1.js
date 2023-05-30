function pair(x, xs) {
    return [x, xs];
}

function is_pair(x) {
    return x instanceof Array && x.length == 2;
}

function is_null(x) {
    return x === null
}

function append(a, b) {
    return a === null ? b : pair(head(a), append(tail(a), b))
}

function head(xs) {
    return xs[0];
}

function tail(xs) {
    return xs[1];
}

function is_list(xs) {
    return is_empty_list(xs) || (tail(xs) !== undefined && is_list(tail(xs)));
}

function list() {
    var the_list = null;
    for (var i = arguments.length - 1; i >= 0; i--)
        the_list = pair(arguments[i], the_list);
    return the_list;
}

function print_list(list) {
    return is_null(list) ? "" : `${head(list)}, ${print_list(tail(list))}`
}

reverse_list = (list) => is_null(list) ? null : append(reverse_list(tail(list)), pair(head(list), null));
better_reverse = (items) => {
    function reverse_ittr(items, result) {
        return is_null(items) ? result : reverse_ittr(tail(items), pair(head(items), result))
    }
    return reverse_ittr(items, null)
}

last_pair = (list) => tail(list) === null ? head(list) : last_pair(tail(list))


const one_through_three = list(1, 2, 3);
// console.log(one_through_three)
// 
// // console.log(print_list(append(list(1, 3, 5, 7), list(2, 4, 6, 8))))
// console.log(reverse_list(one_through_three))
// console.log(better_reverse(one_through_three))

// console.log(last_pair(list(1, 2, 3, 4, 5, 67)))



// Coin Questions

const us_coins = list(25, 10, 5, 50, 1);
const uk_coins = list(100, 50, 20, 10, 5, 2, 1);

function first_denomination(coin_values) {
    return head(coin_values)
}

function except_first_denomination(coin_values) {
    return tail(coin_values);
}

function no_more(coin_values) {
    return coin_values === null
}

function cc(amount, coin_values) {
    return amount === 0 ? 1 : amount < 0 || no_more(coin_values) ? 0 : cc(amount, except_first_denomination(coin_values)) + cc(amount - first_denomination(coin_values), coin_values);
}

console.log(cc(100, us_coins)); //292

