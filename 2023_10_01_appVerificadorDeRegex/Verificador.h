//
//  Verificador.h
//  2023_10_01_appVerificadorDeRegex
//
//  Created by Ivanovicx Nuñez on 01/10/23.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface Verificador : NSObject

@property (weak) IBOutlet NSTextField *expresion;

- (IBAction)botonComprobar:(NSButton *)sender;

@end

NS_ASSUME_NONNULL_END
