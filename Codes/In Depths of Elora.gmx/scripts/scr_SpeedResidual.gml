///Speed Residual

{
    var ResidualTotal = 0;
    var ResidualBank = -1;
    var Excess = argument0;
    if !is_integer(argument0) {
        var i = 0;
        while !is_integer(Excess) {
            ResidualBank[i] = Excess;
            Excess -= global.FallingSpeed;
            i++
            if i > 3 then return false;
            }
        }
    var Residual = Excess + ((Excess-1)*(Excess)/2)*(Excess-1) + Excess*1.5;
    if ResidualBank != -1 then for(var k = 0; k < array_length_1d(ResidualBank); k++) {
        Residual += ResidualBank[k];
        }
    return Residual;
}
