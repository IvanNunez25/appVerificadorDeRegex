//
//  Verificador.m
//  2023_10_01_appVerificadorDeRegex
//
//  Created by Ivanovicx Nuñez on 01/10/23.
//

#import "Verificador.h"

@implementation Verificador

-(void) awakeFromNib {
    _expresion.stringValue = @"";
}

- (IBAction)botonComprobar:(NSButton *)sender {
    
    
    NSError *error = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^\\/(.+)\\/(g?i?m?u?y?)$" options:NSRegularExpressionCaseInsensitive error:&error];
    
    NSArray *matches = [regex matchesInString:_expresion.stringValue options:0 range:NSMakeRange(0, _expresion.stringValue.length)];
    
    for(NSTextCheckingResult *matchResultado in matches){
        NSString *match = [_expresion.stringValue substringWithRange:matchResultado.range];
        NSLog(@"Coincidencia: %@", match);
    }
    
    if([matches count]){
        NSBeep();
        NSAlert *alerta = [[NSAlert alloc] init];
        [alerta setMessageText:@"Éxito"];
        [alerta setInformativeText:@"La expresión regular introducida es válida ✅"];
        [alerta addButtonWithTitle:@"Seguir probando"];
        [alerta runModal];
    } else {
        NSBeep();
        NSAlert *alerta = [[NSAlert alloc] init];
        [alerta setMessageText:@"Fail"];
        [alerta setInformativeText:@"La expresión regular introducida no es válida ❌"];
        [alerta addButtonWithTitle:@"Seguir probando"];
        [alerta runModal];
    }
}


@end
