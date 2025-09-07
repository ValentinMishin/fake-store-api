package ru.valentin.dto;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import ru.valentin.model.Product;

@Mapper(componentModel = "spring")
public interface DtoMapper {
    ProductDto productToProductDto(Product product);
}
